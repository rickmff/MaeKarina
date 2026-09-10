#!/usr/bin/env bash
# Verificações que já apanharam bugs reais neste projeto.
# Rodar depois de qualquer alteração: ./verificar.sh
cd "$(dirname "$0")"
falhou=0

for f in index.html backoffice.html proposta-site.html; do
  [ -f "$f" ] || continue
  echo "── $f"

  # 1. IDs duplicados: getElementById devolve o primeiro e o JS injeta no lugar errado.
  #    Já aconteceu com "vozes" e "planos". Bug silencioso, sem erro no console.
  dup=$(rg -o --replace '$1' 'id="([a-zA-Z0-9_-]+)"' "$f" | sort | uniq -d | rg -v '^(pb|x|c-ok|c-x)$')
  if [ -n "$dup" ]; then echo "   ERRO  id duplicado: $dup"; falhou=1
  else echo "   ok    sem ids duplicados"; fi

  # 2. IDs que o JS procura mas não existem no HTML
  rg -o --replace '$1' '\$\("([a-zA-Z0-9_-]+)"\)' "$f" | sort -u > /tmp/_u
  rg -o --replace '$1' 'id="([a-zA-Z0-9_-]+)"' "$f" | sort -u > /tmp/_d
  falta=$(comm -23 /tmp/_u /tmp/_d | rg -v '^(dig|pb)$')
  if [ -n "$falta" ]; then echo "   ERRO  id usado no JS mas inexistente: $falta"; falhou=1
  else echo "   ok    todos os ids do JS existem"; fi

  # 3. Regra do projeto: nada de storage
  if rg -q '^[^*/]*[^a-zA-Z.](localStorage|sessionStorage)\.(get|set|remove)' "$f"; then
    echo "   ERRO  usa localStorage/sessionStorage"; falhou=1
  else echo "   ok    sem storage"; fi
done

rm -f /tmp/_u /tmp/_d
echo ""
[ $falhou -eq 0 ] && echo "Tudo certo." || echo "Há erros acima."
exit $falhou
