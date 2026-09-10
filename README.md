# Mãe Karina de Iemanjá

Site da casa e painel de gestão. Atendimento espiritual online: consultas, trabalhos à distância, produtos e cursos.

## Rotas

| Rota | O que é |
|---|---|
| `/` | O site |
| `/login` | Entrada da casa — abre o acesso ao painel |
| `/painel` | Painel de gestão |
| `/proposta` | Proposta comercial |

Não existe botão de login no site: a entrada é por endereço direto.

## Como funciona

Três canais, cada um com o seu lugar:

- **Consultas e trabalhos** — no site, pagamento por Pix ou cartão pelo Mercado Pago
- **Produtos físicos** — TikTok Shop (no Brasil, a plataforma só aceita produto físico)
- **Cursos** — Hotmart, com liberação automática do acesso

O site guia por dificuldade em vez de catálogo: a pessoa escolhe o que está sentindo e vê o que costuma ajudar. Em assunto delicado — doença, luto, dívida, violência — o atendimento para de sugerir serviço e encaminha para a Mãe Karina.

## Desenvolvimento

HTML único por página, sem build e sem dependências além do Google Fonts.

```bash
python3 -m http.server 8080
# depois abrir http://localhost:8080
```

Antes de publicar:

```bash
./verificar.sh
```

Verifica ids duplicados, ids usados no JS que não existem no HTML, e uso de storage (o projeto não guarda nada no navegador).

## Publicação

Vercel, a partir da raiz. O `vercel.json` cuida das rotas limpas e dos cabeçalhos.

## Pendências

- Trocar `[SEU WHATSAPP]` pelo número real, no formato `5511999999999`
- Confirmar nomes, descrições e preços reais dos serviços (os atuais são provisórios)
- Substituir os depoimentos de exemplo por áudios reais com autorização
- Ajustar os horários das lives em `LIVES`
