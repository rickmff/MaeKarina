# Mãe Karina de Iemanjá

Site de Mãe Karina de Iemanjá e painel de gestão. Atendimento espiritual online: consultas, trabalhos à distância, produtos e cursos.

## Rotas

| Rota | O que é |
|---|---|
| `/` | O site |
| `/login` | Entrada da Mãe Karina — abre o acesso ao painel |
| `/painel` | Painel de gestão |
| `/proposta` | Proposta comercial |
| `/dados` | Formulário com os dados que a cliente manda para montar o site |

O botão "Entrar" do site é a conta do cliente. O painel não tem botão: a entrada é por endereço direto.

## Como funciona

- **Consultas e trabalhos** — vendidos no site. Depois de pagar, a pessoa preenche a ficha do serviço
- **Produtos** — vendidos no site. Preço e estoque vêm da Bling, que distribui para as outras lojas
- **Cursos** — vendidos na Hotmart; o site mostra e leva até lá
- **Pagamentos** — Stripe: cartão, boleto e Pix (o Pix na Stripe Brasil é liberado por convite)
- **Atendimento** — botão que abre a conversa no WhatsApp
- **Link de pagamento** — no painel, a Mãe Karina cadastra o cliente, escolhe o serviço ou produto e manda o link pelo WhatsApp; o pedido entra no histórico do cliente

O site guia por dificuldade em vez de catálogo: a pessoa escolhe o que está sentindo e vê o que costuma ajudar.

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

Essa é a demonstração. O site de verdade fica na Hostinger (plano Single), na conta da cliente, junto com o banco de dados.

## Pendências

- Trocar `[SEU WHATSAPP]` pelo número real, no formato `5511999999999`
- Confirmar nomes, descrições e preços reais dos serviços (os atuais são provisórios)
- Substituir os depoimentos de exemplo por áudios reais com autorização
- Colocar o número em `MEU_WHATSAPP`, no `dados.html`
