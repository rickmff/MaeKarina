# Rotas indiretas para receber MB WAY morando no Brasil: Merchant-of-Record (MoR), fintechs multi-moeda e plataformas de agendamento

Escopo: vendedor(a) autônomo(a) residente no Brasil (CPF ou MEI), sem NIF/morada/atividade em Portugal; comprador em Portugal pagando em EUR. Estado em 17 de outubro de 2026. Fontes anteriores a 2025 estão sinalizadas com "[pré-2025]". Conteúdo de terceiros (blogs, concorrentes, comunidades) está sinalizado como "[não verificado / terceiro]". Trechos entre aspas são citações literais extraídas das páginas oficiais (via fetch) ou dos snippets oficiais devolvidos pela busca (sinalizados "[via snippet]" quando não foi possível abrir a página inteira).

Nota de método: a maioria das páginas oficiais foi aberta diretamente. Algumas páginas bloquearam o acesso automatizado (Revolut Help 403, Ko-fi Help 403, Gumroad Help renderizado por JS, Planalto 503, Whop merchant-of-record vazio); nesses casos usei snippets oficiais devolvidos pela busca ou espelhos, e sinalizei.

---

## Pergunta-chave 1: Quais plataformas MoR aceitam vendedores do Brasil E mostram MB WAY ao comprador português?

### Takeaway
Só a **Paddle** cumpre simultaneamente as duas condições (aceita vendedores "de qualquer lugar do mundo" exceto países sancionados, e exibe MB WAY para compradores em Portugal em itens avulsos em EUR, sem exigir entidade/banco português) — mas a Paddle proíbe expressamente serviços humanos (consultoria/coaching) e "serviços digitais associados a pseudociência, incluindo clarividência, horóscopos, adivinhação", o que inviabiliza consultas de tarô. Nenhuma outra MoR pesquisada (Lemon Squeezy, Gumroad, FastSpring, 2Checkout/Verifone, Digital River, Polar, Whop, Payhip, Ko-fi, Buy Me a Coffee, Shopify Payments, Wix Payments) demonstrou, em documentação oficial, oferecer MB WAY a um vendedor baseado no Brasil; várias nem aceitam payouts para o Brasil (Lemon Squeezy via banco, Polar, Shopify Payments), e as que dependem da conta Stripe/PayPal do próprio vendedor herdam a exclusão do Brasil nas listas de países habilitados para MB WAY da Stripe e do PayPal/Braintree.

### Cited Findings

**Condição estrutural de fundo (adquirência de MB WAY por país do vendedor)**
- Stripe, MB WAY — "Business locations: Stripe accounts in the following countries can accept MB WAY payments: AT, AU, BE, BG, CA, CH, CY, CZ, DE, DK, EE, ES, FI, FR, GB, GI, GR, HK, HR, HU, IE, IT, JP, LI, LT, LU, LV, MT, MX, NL, NO, NZ, PL, PT, RO, SE, SG, SI, SK, US". Brasil (BR) **não** consta. "Customer locations: Portugal"; "Presentment currency: EUR"; "Recurring payments: No"; "Transaction amounts between 0.50 EUR and 5,000 EUR are supported on MB WAY." — [Stripe Docs – MB WAY payments](https://docs.stripe.com/payments/mb-way)
- Stripe, moedas — "Countries with foreign exchange control: Remittance to or from countries with foreign exchange control (including, but not limited to, Brazil) is carried out exclusively through authorized channels, pursuant to the legislation applicable in those countries." — [Stripe Docs – Supported currencies](https://docs.stripe.com/currencies)
- PayPal/Braintree, MB WAY — disponibilidade para vendedores: "Global except Russia, Japan, Brazil"; comprador: Portugal; moeda: EUR; "currently in limited release and is available to pilot merchants in selected countries". — [PayPal Developer – Braintree MB WAY](https://developer.paypal.com/braintree/docs/guides/local-payment-methods/mbway)
- Consequência: qualquer plataforma que apenas conecta a conta Stripe/PayPal do vendedor (Payhip, Ko-fi, Buy Me a Coffee, Calendly, Cal.com, Acuity, TidyCal, Zcal) não consegue oferecer MB WAY a um vendedor com conta Stripe/PayPal registrada no Brasil, porque a capacidade `mb_way_payments` é concedida por país da conta. (Inferência a partir das duas fontes acima; ver seção Inferences.)

**Paddle (MoR)**
- Países de vendedor: "Paddle works with software businesses anywhere in the world with the exception of the unsupported countries listed below." Lista de não suportados: Afghanistan, Antarctica, Belarus, Burma (Myanmar), Central African Republic, Cuba, Crimea, Democratic Republic of Congo, Donetsk, Haiti, Iran, Iraq, Kherson, Libya, Luhansk, Mali, Netherlands Antilles, Nicaragua, North Korea, Russia, Somalia, South Sudan, Sudan, Syria, Venezuela, Yemen, Zaporizhzhia, Zimbabwe. "This list is subject to change." Brasil não aparece como excluído. — [Paddle Help – Which countries are supported by Paddle](https://www.paddle.com/help/start/intro-to-paddle/which-countries-are-supported-by-paddle)
- MB WAY na Paddle: disponível em Portugal, EUR, "primary market"; "Paddle Checkout only presents MB WAY as a payment method for one-time items priced in Euro" com endereço do cliente em Portugal; subscrições: não suportadas; "You don't need a Portuguese bank account or entity in Portugal to add MB WAY as a payment option with Paddle." Ativação: "Paddle > Checkout > Checkout configuration" > "Payment methods" > marcar "MB WAY" > Save. Captura "can take up to ten minutes" após autorização; reembolsos e chargebacks: suportados. A página não menciona Multibanco. — [Paddle Developer – MB WAY](https://developer.paddle.com/concepts/payment-methods/mb-way)
- Paddle API de países: "The status of a country is available from the /countries endpoint... `allow_sales` field indicates whether a country is supported." [via snippet] — [Paddle Developer – Supported sellers (partners)](https://developer.paddle.com/partners/embed-billing/get-started/supported-sellers); [Paddle API – Countries](https://developer.paddle.com/api-reference/countries)
- Paddle, produtos proibidos (decisivo para o caso de uso): intro — Paddle não serve se "primary offering is human services (such as consultation, support, or design services)"; item 2 — "Human services that are not related to a software offering" (exemplos: consultoria, coaching, serviços de TI, comunidades de especialistas); item 3 — "no bona fide software or service" (doações, crowdfunding, acesso a comunidade, ads, patrocínio); item 14 — "Digital services associated with pseudo-science, including but not limited to clairvoyance, horoscopes, fortune-telling."; item 15 — aconselhamento médico; a lista "não é exaustiva". — [Paddle Help – What am I not allowed to sell on Paddle](https://www.paddle.com/help/start/intro-to-paddle/what-am-i-not-allowed-to-sell-on-paddle)

**Lemon Squeezy (Stripe)**
- Payout por banco: Brasil **não** consta na lista de países com payout bancário (lista inclui Argentina, Chile, Colômbia, México, Peru, Uruguai, Portugal etc.). "PayPal payouts are supported in 200+ countries and regions." (não nomeia o Brasil). Compras: "We currently allow purchases from all countries except those listed in our unsupported customer countries list." — [Lemon Squeezy Docs – Supported Countries](https://docs.lemonsqueezy.com/help/getting-started/supported-countries)
- Métodos de pagamento no checkout: cartões (Visa, Mastercard, Amex, Discover, Diners, JCB, UnionPay), PayPal, Apple Pay (Safari), Google Pay (Chrome), Alipay, WeChat Pay, Cash App Pay, débitos bancários (ex.: ACH). "Some of these payment methods are only available on certain devices or in certain locations." "For subscription products we only support cards, Apple Pay, Google Pay and PayPal at this time." **MB WAY e Multibanco não aparecem.** — [Lemon Squeezy Docs – Payment Methods](https://docs.lemonsqueezy.com/help/checkout/payment-methods)
- Aquisição pela Stripe anunciada em julho de 2024 [pré-2025]; nenhuma fonte encontrada sobre fechamento de novos cadastros em 2025–2026. — [Finextra – Stripe acquires Lemon Squeezy](https://finextra.com/pressarticle/101686/stripe-acquires-lemon-squeezy)

**Gumroad**
- Página oficial de payouts não renderizou (conteúdo JS). Espelho da documentação do repositório open-source da Gumroad: lista `COUNTRY_CODES_NOT_SUPPORTED_BY_PCP` inclui `"BR" # Brazil` (junto com DZ, EG, IN, IL, JP, FM, MA, TR); vendedores nesses países "cannot use PayPal Commerce Platform for payouts" embora possam aceitar PayPal. [espelho/terceiro] — [mintlify.wiki – antiwork/gumroad payments/paypal](https://mintlify.wiki/antiwork/gumroad/payments/paypal)
- Texto oficial [via snippet]: "If your country is not supported by direct bank deposits or PayPal, then unfortunately, we have no way to pay you out for now." — [Gumroad Help – Getting paid](https://gumroad.com/help/article/13-getting-paid)
- Blog da Wise [terceiro, não datado/pré-2025]: "You can connect your Stripe account to Gumroad in all countries where Stripe is available, except for Brazil". — [Wise blog – Gumroad fees](https://wise.com/us/blog/gumroad-fees)
- Nenhuma fonte oficial da Gumroad menciona MB WAY/Multibanco.

**FastSpring**
- Métodos locais listados (com países): ACH Direct Debit (US), iDEAL (NL), Klarna Pay Now (AT, BE, DE, NL, SE), OVO (ID), Pix e Pix Automático (BR), PromptPay (TH), SEPA Direct Debit (AT, BE, CY, DE, DK, EE, ES, FI, FR, GR, IE, IT, NL, **PT**, SE – "On request"), UPI/UPI AutoPay (IN), Wire Transfers (global, "On request"). "Other payment methods vary depending on your customer's location." **MB WAY e Multibanco não aparecem; "Portugal" só aparece como "PT" em SEPA DD.** — [FastSpring Docs – Payment methods accepted by FastSpring](https://developer.fastspring.com/docs/payment-methods-accepted-by-fastspring)
- Payout: métodos PayPal, Venmo (US), depósito direto/ACH, cheque (USD), wire internacional via SWIFT, MoneyGram; "Payoneer is not a supported transfer method" [via snippet]; não há lista pública de países. — [FastSpring Docs – Set up your payout account](https://developer.fastspring.com/docs/set-up-your-payout-account)

**2Checkout / Verifone**
- Tabela de métodos de pagamento: **Multibanco, MB WAY e Portugal não aparecem.** Única ressalva: "The payment currencies available for Wire / Bank transfer depend on your merchant setup". — [2Checkout Docs – Payment methods](https://docs.2checkout.com/payments/payments/payment-methods)
- Preços [via snippet]: "payment methods availability may differ depending on the country you are based in". — [2Checkout – Pricing](https://www.2checkout.com/pricing/)

**Digital River**
- Em 28 jan 2025 iniciou encerramento por insolvência; demissão de 122 funcionários; **pedido de falência Chapter 7 em maio de 2025**; vendedores da MyCommerce relataram pagamentos não efetuados desde meados de 2024. Não é opção. — [Digital Commerce 360 – Digital River cuts staff, will shut down](https://www.digitalcommerce360.com/2025/01/29/digital-river-cuts-staff-will-shut-down-headquarters/); [Twin Cities Business – Digital River to Shut Down](https://tcbmag.com/minnetonka-based-e-commerce-firm-digital-river-to-shut-down/); [Freemius – shutdown guide (terceiro)](https://freemius.com/blog/digital-river-mycommerce-shutdown-guide/)

**Polar.sh**
- "Polar uses Stripe Connect Express to issue payouts to residents or businesses in any of the countries below." ~150 países; **Brasil não consta** (na América Latina: Argentina, Chile, Colômbia, México, Peru, Uruguai). "We support payments globally except from countries with US sanctions". — [Polar Docs – Supported countries](https://polar.sh/docs/merchant-of-record/supported-countries)
- Métodos locais habilitados (changelog [via snippet]): Bancontact, BLIK, EPS, iDEAL/Wero, Przelewy24, Bizum (EUR, compras avulsas) e UPI (INR). **MB WAY não listado.** — [Polar – Product updates](https://polar.sh/docs/changelog/recent)

**Whop (MoR)**
- "Whop supports payouts to over 200 different countries"; Brasil **consta** na grade de países; "Choose your payout schedule (instant, daily, or weekly, depending on your account)"; mínimo de saque US$ 10 "if applicable". — [Whop Docs – Set up payouts](https://docs.whop.com/manage-your-business/manage-payouts/set-up-payouts)
- Criadores fora dos EUA "need to set up a bank account that accepts the currency of their registered country"; "The system automatically converts all currencies to the currency of the region you chose"; "Payouts won't reach a bank account that accepts United States dollars if the account's country uses another local currency." "Standard payouts take up to 5 business days." — [Whop Docs – Payout methods](https://docs.whop.com/manage-your-business/manage-payouts/payout-methods)
- A página oficial "Merchant of Record" retornou vazia; **não encontrei documentação oficial da Whop listando MB WAY/Multibanco** como método ao comprador.

**Payhip / Ko-fi / Buy Me a Coffee (não são MoR; usam o processador do próprio vendedor)**
- Payhip [via snippet]: "Stripe is currently supported in over 40 countries including Austria, Australia, Belgium, Brazil..."; processadores regionais incluem Mercado Pago (Argentina, Brasil, Chile, Colômbia, México, Peru, Uruguai); gateways visíveis dependem da região ("Account Settings, Payment Details"). — [Payhip Help – Accepted payment methods](https://help.payhip.com/article/65-accepted-payment-methods); [Payhip blog – 11 new payment gateways](https://payhip.com/blog/new-feature-payhip-integrates-with-11-new-payment-gateways/)
- Ko-fi [via snippet; página 403]: "a PayPal or Stripe account is needed to accept payments on Ko-fi"; "a full Stripe account is needed to accept payments on Ko-fi. Stripe Express accounts aren't available at this time"; se Stripe não estiver disponível no país, "you can still use PayPal". — [Ko-fi Help – Can I use Stripe in my country?](https://help.ko-fi.com/hc/en-us/articles/360009265834-Can-I-use-Stripe-in-my-country); [Ko-fi Help – What payment methods are available](https://help.ko-fi.com/hc/en-us/articles/24482435253661-What-payment-methods-are-available-on-Ko-fi)
- Buy Me a Coffee: "Below is the list of countries currently supported for payouts." Brasil aparece sob "Stripe Standard Connect"; "If you reside in one of the above countries and meet the payout requirements, you can receive your earnings from Buy Me a Coffee." — [BMAC Help – Supported countries for payouts](https://help.buymeacoffee.com/en/articles/6258038-supported-countries-for-payouts-on-buy-me-a-coffee)

**Shopify Payments / Shopify Markets**
- Países com Shopify Payments: "Australia, Austria, Bulgaria, Belgium, Canada, China, Croatia, Cyprus, Czechia, Estonia, Denmark, Finland, France, Germany, Gibraltar, Greece, Hong Kong SAR, Hungary, Ireland, Italy, Japan, Latvia, Liechtenstein, Lithuania, Luxembourg, Malta, Mexico, Netherlands, New Zealand, Norway, Poland, Portugal, Romania, Singapore, Slovenia, Spain, Sweden, Switzerland, the United Arab Emirates, the United Kingdom, the United States". **Brasil não consta.** — [Shopify Help – Shopify Payments supported countries](https://help.shopify.com/en/manual/payments/shopify-payments/supported-countries)
- MB WAY e Multibanco hoje existem como métodos locais do Shopify Payments em Portugal (limites MB WAY €0,50–€5.000; sem subscrições; Multibanco €0,50–€99.999, cancelamento após 7 dias, sem chargeback) [via snippet] — ou seja, só para lojistas elegíveis a Shopify Payments em Portugal. — [Shopify Help – MB WAY](https://help.shopify.com/en/manual/payments/shopify-payments/local-payment-methods/mb-way); [Shopify Help – Multibanco](https://help.shopify.com/en/manual/payments/shopify-payments/local-payment-methods/multibanco); [Shopify Help – Portugal payment methods](https://help.shopify.com/en/manual/payments/shopify-payments/supported-countries/portugal/payment-methods)
- Thread de comunidade [pré-2025, set/2023]: staff da Shopify: "MB Way isn't currently available through Shopify Payments"; gateways EuPago e Ifthenpay "aren't approved gateways, they seem to work for merchants wanting to use MB Way" (ambos exigem entidade portuguesa — não verificado aqui). — [Shopify Community – Can MBWay be integrated](https://community.shopify.com/t/can-mbway-be-integrated-with-shopify-payments-in-portugal/248592)

**Wix Payments**
- Brasil consta entre os países do Wix Payments, moeda BRL [via snippet; artigo de suporte com ~2.068 dias = pré-2025]; provedores alternativos no Brasil: PayPal, TripleA, Mercado Pago, Pagsmile, SumUp, PagBank, Pagar.me. Nenhuma menção a MB WAY/EUR para vendedor brasileiro. — [Wix Support – Available payment providers in your country](https://support.wix.com/en/article/available-payment-providers-in-your-country); [Wix Support – About Wix Payments](https://support.wix.com/en/article/about-wix-payments)

### Inferences
- A exclusão do Brasil em "business locations" do MB WAY na Stripe e em "seller countries" do Braintree significa que o único caminho para exibir MB WAY a um comprador português, sem entidade europeia, é uma MoR que processa com a **própria** licença (Paddle). Plataformas "connect-your-Stripe" (Payhip, Ko-fi, BMAC, Calendly, Cal.com, Acuity, TidyCal, Zcal) herdam a limitação da conta Stripe/PayPal brasileira.
- Na Paddle, a oferta real é tecnicamente viável (one-time em EUR, cliente em PT, sem banco PT), mas a política de uso aceitável bloqueia o caso de uso (serviços humanos + "clairvoyance, horoscopes, fortune-telling"). Um produto digital puro (e-book, curso gravado, áudio) sobre espiritualidade teria risco menor no item 2, mas continuaria exposto ao item 14 ("digital services associated with pseudo-science") — a Paddle "reserves the right to exercise judgment".
- Whop é a única outra MoR que confirma payout ao Brasil, mas sem evidência documental de MB WAY; a moeda de payout seria convertida para BRL ("currency of the region you chose").

### Gaps
- Whop: não consegui abrir a página "Merchant of Record" nem uma lista oficial de métodos de pagamento ao comprador; MB WAY na Whop permanece não confirmado nem negado.
- Gumroad: a página oficial de payouts não renderizou; a lista oficial de países/metodologia de MB WAY não foi verificada em fonte primária (apenas espelho do repositório e blog de terceiro).
- FastSpring e 2Checkout/Verifone: não encontrei lista oficial pública de países de vendedor/payout; só a lista de métodos de pagamento (sem MB WAY).
- Lemon Squeezy: não confirmado se PayPal payout cobre o Brasil (a página diz "200+ países" sem nomear).
- Wix Payments: não verifiquei se um lojista brasileiro consegue cobrar em EUR via Wix Payments (a página indica BRL) nem se existe provedor com MB WAY no catálogo Wix para contas brasileiras.

---

## Pergunta-chave 2: Pilha de taxas e caminho do dinheiro até o Brasil, por plataforma

### Takeaway
Paddle: 5% + US$ 0,50 por transação; payout mensal (saldo ≥ US$ 100, enviado até dia 15) por wire ou Payoneer em 13 moedas (BRL não incluído; margem de conversão até 1,5%; possível taxa SWIFT de US$ 15), o que para um residente no Brasil significa USD/EUR → câmbio no banco brasileiro ou via Payoneer/Wise/Husky. Whop: 2,7% + US$ 0,30 (cartão doméstico) + 1,5% internacional + 1% conversão + add-ons opcionais, payout em banco local "in your country and currency" (BRL) com tarifa "varies by country". As demais (Payhip/Ko-fi/BMAC/booking apps) só repassam a taxa do Stripe/PayPal do vendedor; via PayPal Brasil o recebimento em EUR sofre 3,5% de margem cambial e conversão automática para BRL na conta vinculada ao CPF.

### Cited Findings

**Paddle**
- Preço: "5% + 50¢" por transação de Checkout; "No monthly fees, migration fees, or hidden extras." — [Paddle – Pricing](https://www.paddle.com/pricing)
- Payout [via snippet]: "there is a monthly payout schedule"; payouts disparados no dia 1 se saldo acima do limite definido ("min $100 floor"); Paddle envia "by the 15th"; "either via wire transfer or Payoneer"; "it can then take up to 3 working days before it arrives". — [Paddle Help – When and how do I get paid](https://www.paddle.com/help/manage/get-paid/when-and-how-do-i-get-paid)
- Taxas de payout [via snippet]: "for most countries, Paddle will not charge you any fees on your payout"; "for certain countries, a $15 SWIFT fee may be applicable"; Payoneer: depende do tipo de conta Payoneer. — [Paddle Help – Is there a fee taken for payouts](https://paddle.com/help/manage/get-paid/is-there-a-fee-taken-for-payouts)
- Moedas de payout: "We currently support payouts in the following currencies:" AUD, GBP, CAD, CNY, CZK, DKK, EUR, HUF, PLN, ZAR, SEK, CHF, USD. **BRL não incluído.** Se escolher moeda diferente da Balance Currency, Paddle "reserve[s] the right to charge a conversion margin of up to 1.5%". Se a moeda local não for suportada, "we can send the payout in the most competitive Default Currency" e o banco do vendedor converte, com encargos por conta do vendedor. Método selecionável: "Select 'Bank/Wire Transfer' as your 'Payment Method'". — [Paddle Help – Can I be paid in my local currency](https://www.paddle.com/help/manage/get-paid/can-i-be-paid-in-my-local-currency)

**Whop**
- "2.7% + $0.30" cartões domésticos; cartões internacionais +1,5%; conversão de moeda +1%; ACH 1,5% (máx. US$ 5); add-ons: Orchestration 0,8%, Billing 0,5%, Tax and remittance 2% (só quando há imposto cobrado) → "6% + $0.30" com tudo ligado; payouts: ACH next-day US$ 2,50; RTP instantâneo 4% + US$ 2,50; cripto 5% + US$ 1; wire US$ 23; "International local banks: varies by country"; "Local bank transfer in your country and currency (timing varies by country)"; disputa US$ 15; 3DS US$ 0,03; Radar US$ 0,07. — [Whop Docs – Fees](https://docs.whop.com/fees)
- Conflito: busca anterior reportou que a página de fees da Whop descreve "Whop Payments at 3% plus payment processing fees" [via snippet]; a página aberta diretamente mostra 2,7% + US$ 0,30 sem percentual de plataforma separado. Comparativos de concorrentes (Dodo Payments, Fungies) estimam ~6–7% efetivo [terceiros, concorrentes]. — [Whop Docs – Fees](https://docs.whop.com/fees); [Dodo Payments – Whop fees (concorrente)](https://dodopayments.com/blogs/whop-fees-explained)

**Lemon Squeezy / Polar / Gumroad / FastSpring / 2Checkout**
- Lemon Squeezy: payout bancário indisponível para Brasil; PayPal "200+ countries". — [Lemon Squeezy Docs – Supported Countries](https://docs.lemonsqueezy.com/help/getting-started/supported-countries)
- Polar: payout só para países listados (Brasil fora). — [Polar Docs – Supported countries](https://polar.sh/docs/merchant-of-record/supported-countries)
- Gumroad: PayPal Commerce Platform payouts não suportados para BR [espelho]. — [mintlify.wiki – gumroad payments/paypal](https://mintlify.wiki/antiwork/gumroad/payments/paypal)
- FastSpring: PayPal, ACH, wire SWIFT, cheque, MoneyGram; "Payoneer is not a supported transfer method" [via snippet]. — [FastSpring Docs – Set up your payout account](https://developer.fastspring.com/docs/set-up-your-payout-account)
- 2Checkout: não encontrei página de payout/países; preços variam por país do vendedor [via snippet]. — [2Checkout – Pricing](https://www.2checkout.com/pricing/)

**Trilho PayPal Brasil (usado por Ko-fi, Calendly, Payhip, Acuity, TidyCal etc.)**
- Conversão de pagamentos recebidos em outra moeda: "3,50% acima da taxa de câmbio base para formar a taxa de câmbio da transação" [via snippet]. Tarifa fixa por transação comercial em EUR: "0,35 EUR" (BRL: "0,60 BRL"). — [PayPal Brasil – Tarifas para vendedores](https://www.paypal.com/br/business/paypal-business-fees)
- "O saldo recebido será transferido automaticamente para a conta bancária vinculada ao CPF da conta do PayPal. Se o pagamento recebido for em moeda estrangeira, a conversão para Real ocorrerá automaticamente" [via snippet]. — [PayPal Brasil – Como receber recursos](https://www.paypal.com/br/cshelp/article/como-receber-recursos-com-o-paypal-help667)
- Contas comerciais podem "escolher se deseja converter automaticamente os pagamentos recebidos para sua moeda principal ou aceitá-los na moeda de recebimento sem conversão automática"; contas pessoais não [via snippet]. — [PayPal Brasil – Preferências de recebimento](https://www.paypal.com/br/cshelp/article/o-que-s%C3%A3o-prefer%C3%AAncias-de-recebimento-de-pagamento-e-como-posso-defini-las-help536)

**Trilho Payoneer (opção de payout da Paddle)**
- Receber de outro cliente Payoneer: grátis; cartão direto de clientes: "Até 3,99%" (+US$ 0,49 em alguns países); receiving accounts: grátis "Ao receber fundos na moeda local de seu endereço principal (por exemplo, EUR na Europa, GBP no Reino Unido)", caso contrário "TAXA FIXA OU TAXA DE 1%"; saque em moeda não local: "1 a 4%"; conversão entre saldos 0,5%; anuidade US$ 29,95 se receber menos de US$ 6.000 em 12 meses. — [Payoneer – Preços (PT)](https://www.payoneer.com/pt/about/pricing/)
- Saque em BRL: "In Brazil, we have a local partner to do this process in BRL that is Banco Inter"; "Banco Inter is a service provider hired by Payoneer to process funds transfers in Brazil and help with the local regulatory demands" [via snippet]. Transferência para conta bancária em moeda não local com conversão: "1.2% – 4%" [via snippet]. — [Payoneer – Documentação para receber pagamentos (PT)](https://www.payoneer.com/pt/resources/business/documentacao-para-receber-pagamentos-internacionais-conta-bancaria/); [Payoneer – Pricing (EN)](https://www.payoneer.com/pricing/)

### Inferences
- Caminho Paddle → Brasil mais barato provável: saldo em USD/EUR → payout em EUR para IBAN Wise Business (MEI) ou conta Payoneer EUR → conversão para BRL pela fintech (Wise/Husky usam câmbio comercial + taxa fixa/percentual; Payoneer 1,2–4%). Payout direto por wire para banco brasileiro implica US$ 15 de SWIFT (possível) + spread do banco receptor + IOF.
- Para serviços exportados, o IOF-câmbio de ingresso é zero (ver Pergunta 6), mas se o valor ficar parado numa conta no exterior e for internado depois, a Receita pode cobrar 0,38%.

### Gaps
- Não encontrei tarifa oficial da Whop para payout a banco brasileiro ("varies by country").
- Não encontrei página oficial da Paddle com a lista de países onde a taxa SWIFT de US$ 15 se aplica.
- Taxas do FastSpring e 2Checkout para vendedor (percentual de plataforma) não foram coletadas (foco em MB WAY, que ambas não oferecem).

---

## Pergunta-chave 3: Serviços (consultas ao vivo, sessões agendadas) e serviços espirituais/tarô são permitidos?

### Takeaway
Na Paddle, não: a política proíbe tanto "human services that are not related to a software offering" (consultoria, coaching) quanto "digital services associated with pseudo-science, including but not limited to clairvoyance, horoscopes, fortune-telling". Na Stripe, "Psychic services and fortune tellers" é proibido apenas em jurisdições específicas (Japão, México, Tailândia), não no Brasil nem em Portugal; a Wise não nomeia serviços psíquicos, mas sua lista "is not exhaustive" e reserva recusa por tolerância de risco. Para Whop, Lemon Squeezy, Gumroad, FastSpring, 2Checkout, Polar e as plataformas de agendamento, não localizei cláusula específica sobre tarô/psíquicos nesta pesquisa.

### Cited Findings
- Paddle: "Human services that are not related to a software offering" (item 2, exemplos: "pure consulting or advisory services, including but not limited to legal advice, coaching, IT services, and access to a community of experts" [via snippet]); "Digital services associated with pseudo-science, including but not limited to clairvoyance, horoscopes, fortune-telling." (item 14); introdução: Paddle "is not a good fit" se "primary offering is human services (such as consultation, support, or design services) or the sale of physical goods"; listas "not exhaustive"; Paddle "reserves the right to exercise judgment". — [Paddle Help – What am I not allowed to sell on Paddle](https://www.paddle.com/help/start/intro-to-paddle/what-am-i-not-allowed-to-sell-on-paddle); [Paddle Support – AUP](https://paddle.com/support/aup)
- Stripe (lista de negócios restritos): "Psychic services and fortune tellers" aparece como proibido específico de jurisdição em Japão, México e Tailândia; não há entradas para tarô, astrologia ou "spiritual"; "Get rich quick" schemes" proibidos; restrições específicas do Brasil listadas são apenas de produtos adultos (joias genitais, próteses, "sex accessories and lifelike sex toys"). — [Stripe – Restricted businesses](https://stripe.com/legal/restricted-businesses)
- Wise AUP (US) [via snippet]: a lista "is representative, it is not exhaustive, and we reserve our right to deny our services to any customers who exceed our risk tolerance"; restringe "products and services which are not legal in the jurisdiction they are being offered in"; e "multi-level marketing, pyramid schemes, get rich quick schemes, referral marketing, including any other services promising unreasonably high rewards". Nenhuma menção a psíquicos/tarô. — [Wise – Acceptable Use Policy (US)](https://wise.com/us/legal/acceptable-use-policy); [Wise Help – Can my business use Wise?](https://www.wise.com/help/articles/2977974/can-my-business-use-wise)
- Calendly: "Calendly does not hold the money"; reembolsos/impostos/políticas de cancelamento são tratados no Stripe/PayPal [via snippet + fetch]. Ou seja, a política aplicável é a do processador. — [Calendly Help – Payments FAQ](https://calendly.com/help/payments-faq)

### Inferences
- Para consultas ao vivo (serviço humano), as MoR "software-first" (Paddle, Lemon Squeezy, Polar, FastSpring) são estruturalmente hostis; mesmo sem cláusula explícita sobre tarô, a categoria "serviços humanos/consultoria" tende a ser recusada na diligência. Whop (marketplace de comunidades/coaching) é culturalmente mais compatível com serviços, mas não confirmei sua política sobre serviços espirituais nem a oferta de MB WAY.
- Para o Brasil e Portugal, a Stripe não lista serviços psíquicos como proibidos; o obstáculo da Stripe é o país da conta (BR fora do MB WAY), não a atividade.

### Gaps
- Não verifiquei as políticas de uso aceitável de Whop, Lemon Squeezy, Gumroad, FastSpring, 2Checkout, Polar, Payhip, Ko-fi, BMAC, Shopify, Wix, Calendly/Stripe-PayPal quanto a tarô/espiritualidade (apenas Paddle, Stripe e Wise foram checadas).
- PayPal AUP para serviços psíquicos não foi verificada.

---

## Pergunta-chave 4: Wise / Revolut / Payoneer (e Nomad, Husky, Remessa Online, Inter Global, C6 Global, Avenue) conseguem RECEBER MB WAY? Se não, que papel podem ter?

### Takeaway
Nenhuma dessas fintechs atua como adquirente de MB WAY para um residente no Brasil: Wise, Payoneer, Nomad/Husky, Inter e C6 oferecem apenas **contas de recebimento** (IBAN/SWIFT/ACH) para receber transferências em EUR/USD; Revolut Business exige empresa registrada no EEE/Reino Unido/EUA (residentes no Brasil só via empresa americana), e a Payoneer só tem cobrança por cartão ("Até 3,99%"), não MB WAY. O papel realista dessas contas é ser o **destino do payout** de uma MoR/gateway (por ex., Paddle paga em EUR para IBAN da Wise Business de um MEI; Payoneer é método de payout nativo da Paddle), com conversão para BRL feita pela fintech a câmbio comercial + taxa.

### Cited Findings

**Wise Business (Brasil)**
- Elegibilidade: "Sole Trader: Empresário Individual, including MEI (Micro Empresa Individual)" (natureza jurídica 213-5); "Sociedade Limitada Unipessoal/Sociedade Empresaria Limitada" (206-2); "Sociedade Unipessoal de Advocacia" (232-1); "There can only be 1 owner that owns 100% of the company."; exige CNPJ ativo, CPF do dono, ID, selfie para Sole Trader. — [Wise Help – Opening a Wise account for your Brazilian business](https://wise.com/help/articles/7hdqRgpo7Otr84XRtMBdqv/opening-a-wise-account-for-your-brazilian-business)
- Recursos: enviar dinheiro; conta multi-moeda "40+ currencies"; "Account details to receive money in different currencies" (link de preços cita "22 currencies"; a página não nomeia EUR/USD explicitamente); limitações: "You cannot receive BRL"; sem pagamentos em lote; envio a partir de BRL limitado a US$ 5.000 por transferência; taxa única para account details paga só via Pix; menção a "250 BRL" como encargo recebível via Pix (redação ambígua na página). — mesma fonte.
- Produto Wise Business lançado no Brasil em dezembro de 2024 (notícia) [terceiro]. — [Finsiders Brasil](https://finsidersbrasil.com.br/?p=38451)
- Papel/limites: Wise não oferece adquirência de MB WAY (nenhuma página de ajuda encontrada menciona MB WAY; apenas "card payments" por tipo de negócio). — [Wise Help – Can my business type accept card payments?](https://wise.com/help/articles/6mRjhCgInCCeqnmayx4OrV/can-my-business-type-accept-card-payments)

**Revolut Business**
- Páginas de ajuda oficiais (não abriram; 403) [via snippet]: "the company must be registered and able to prove its physical presence in either the EEA or the United States" (variantes citam também UK/Austrália); "If your company is registered in the United States, you can apply if you reside in" lista que inclui Brasil. Contas pessoais: países suportados incluem "Australia, Brazil, European Economic Area (EEA), Japan, New Zealand, Singapore, Switzerland, United Kingdom, United States". — [Revolut Help – What country of residence is eligible (Business)](https://help.revolut.com/business/help/setting-up-an-account/is-my-business-eligible/what-country-of-residence-is-eligible-to-open-a-revolut-business-account/); [Revolut Help (BR) – Supported countries](https://help.revolut.com/en-BR/help/profile-and-plan/profile-plan/verifying-identity/what-countries-are-supported)
- Nenhuma evidência de que a Revolut ofereça adquirência de MB WAY a não residentes; não pesquisado em profundidade (gap).

**Payoneer**
- Receiving accounts em várias moedas, incluindo EUR, "que recebem pagamentos como se fossem uma transferência local" [via snippet]; saque em BRL via Banco Inter; documentos (comprovante de endereço ≤ 3 meses, extrato) exigidos "conforme normas do Banco Central" [via snippet]. — [Payoneer – Documentação para receber pagamentos (PT)](https://www.payoneer.com/pt/resources/business/documentacao-para-receber-pagamentos-internacionais-conta-bancaria/); [Payoneer – Local receiving accounts](https://www.payoneer.com/local-receiving-accounts/)
- Cobrança direta de clientes: só "cartão", "Até 3,99%"; receber em EUR sendo o endereço principal fora da Europa: "TAXA FIXA OU TAXA DE 1%". — [Payoneer – Preços (PT)](https://www.payoneer.com/pt/about/pricing/)
- Payoneer é método de payout nativo da Paddle [via snippet]. — [Paddle Help – When and how do I get paid](https://www.paddle.com/help/manage/get-paid/when-and-how-do-i-get-paid)

**Nomad (USD) e Husky by Nomad (multi-moeda)**
- Nomad: "Receba dinheiro de contas Nomad, por ACH Push doméstico e internacional e também Wire* doméstico e internacional"; "Os limites de recebimento variam de US$ 5 mil a US$ 50 mil por dia."; "Envio de dinheiro de volta para o Brasil: encargos de 0,38% + taxa de conversão a partir de 1%* + US$ 10." A página não menciona EUR nem IOF. — [Nomad – Tarifas](https://www.nomadglobal.com/tarifas-nomad)
- Husky: PF e PJ; "diversas moedas estrangeiras"; "Até 1% de taxa" (conversões > US$ 1.000) ou "Tarifa única de US$ 10" (≤ US$ 1.000); usa "câmbio real comercial" sem spread; IOF "0,38% a 7,38%" podendo ser zero para serviços exportados; chegada no banco brasileiro "em até 2 horas"/"1 dia útil"; a página não nomeia EUR nem IBAN. — [Husky](https://www.husky.io/)
- Conteúdo da Nomad sobre Husky (marketing) diz que a Husky fornece "IBAN e SWIFT" para receber em euros e custo de "apenas 1% por cada pagamento recebido" [terceiro/marketing]. — [Nomad – Como receber salário em euros](https://www.nomadglobal.com/conteudos/como-receber-salario-em-euros); [Nomad – Husky by Nomad](https://www.nomadglobal.com/conteudos/husky-by-nomad)

**Remessa Online**
- Modelo de "solicitação de transferência": "você faz um cadastro e a solicitação da transferência"; "o pagador recebe a solicitação com todas as taxas incluídas, que são a taxa de câmbio, IOF e uma taxa de operação"; "A Remessa Online não cobra tarifa" do destinatário; custo operacional citado: "1,3%"; saque "em até dois dias úteis". Não há IBAN próprio para o destinatário. — [Remessa Online – Como receber pagamento em euro no Brasil](https://www.remessaonline.com.br/blog/como-receber-pagamento-em-euro-no-brasil/)

**Inter Global Account / C6 Global / Avenue**
- Inter [via snippet]: "A Global Account permite movimentar recursos em dólar gratuitamente para indivíduos"; "Para captar remessas internacionais, basta usar seu código IBAN e nosso código BIC/SWIFT."; "No Inter, nós não cobramos tarifas para o recebimento de valores em moeda estrangeira."; "Para fazer as operações de câmbio no Inter, você precisa ser residente fiscal no Brasil." EUR para PF não confirmado. — [Inter blog – Como receber em dólar no Inter](https://blog.inter.co/como-receber-em-dolar-no-inter-entendendo-a-global-account/); [Inter blog – Conta PJ para receber do exterior](https://blog.inter.co/conta-pj-para-receber-do-exterior/)
- C6 Bank [pré-2025, dez/2022] [via snippet]: Conta Global em euro com recebimento ("Receber euro" > "Meus dados", IBAN + SWIFT "CSIXKYKY"); taxa de recebimento citada como €15 (2022) e €10 em outra página; "Toda vez que você receber uma transferência internacional, é necessário autorizar a transação em nosso aplicativo."; PJ: spread 2,5% (horário comercial) / 4%. — [C6 Bank – habilita envio e recebimento de euros](https://www.c6bank.com.br/blog/c6-bank-habilita-envio-e-recebimento-de-euros-do-exterior); [C6 Bank – Conta internacional em euro PJ](https://www.c6bank.com.br/blog/c6-bank-lanca-conta-internacional-em-euro-para-clientes-pj)
- Avenue: nenhuma fonte relevante encontrada nesta pesquisa (gap).

### Inferences
- Para um MEI, a combinação mais limpa é: MoR/gateway com payout em EUR → IBAN de account details Wise Business (ou Payoneer EUR) → conversão para BRL. Para CPF (sem CNPJ), Wise Business não é elegível; restam Payoneer (PF), Husky (PF), Inter/C6 (PF) e Remessa Online (modelo de solicitação, sem IBAN).
- Um IBAN de Wise/Payoneer aceita SEPA de um gateway português apenas se o gateway permitir payout para IBAN estrangeiro ao país da conta de comerciante — e, de qualquer modo, esse gateway exigiria entidade/NIF português, fora do escopo.

### Gaps
- Não confirmei em fonte oficial se a Wise Business de um MEI recebe account details **EUR** (a página só diz "different currencies"/"22 currencies").
- Não confirmei se a Revolut (pessoal, disponível no Brasil) fornece IBAN EUR a residentes brasileiros nem sua política de merchant acquiring para não residentes.
- Husky: a página oficial não nomeia EUR/IBAN; a afirmação vem de marketing da Nomad.
- Avenue: sem dados.
- Inter Global Account em EUR para PF: não confirmado.

---

## Pergunta-chave 5: Plataformas de agendamento (Calendly, Cal.com, SimplyBook.me, Acuity, Booksy, Fresha, TidyCal, Zcal) oferecem MB WAY?

### Takeaway
Nenhuma oferece MB WAY por conta própria: todas delegam o checkout ao Stripe e/ou PayPal (Calendly: Stripe e PayPal; Cal.com: Stripe; Acuity: Stripe/Square/PayPal; SimplyBook.me: Stripe(SCA)/PayPal na ajuda oficial, com menções de marketing a Mollie/Adyen/PayFort; Zcal: Stripe; TidyCal: Stripe e PayPal segundo terceiros). Como a conta Stripe/PayPal de um residente no Brasil não habilita MB WAY, o método não aparecerá para o comprador português. Booksy e Fresha não tiveram lista de países/métodos localizada.

### Cited Findings
- Calendly: "Calendly supports Stripe and PayPal."; "Calendly does not hold the money."; "Payment requirements depend on your plan." Artigo Stripe [via snippet]: métodos Stripe suportados — cartões, Apple Pay, Google Pay, Link, Affirm/Klarna; moedas AUD, CAD, EUR, GBP, USD. — [Calendly Help – Payments FAQ](https://calendly.com/help/payments-faq); [Calendly Help – Calendly + Stripe](https://calendly.com/help/calendly-stripe)
- Cal.com: Cal.com "uses Stripe and other apps to allow you to receive payments when someone books your paid link"; "Select Stripe as the method and set the Stripe price and refund policy." Self-hosting: webhook em `/api/integrations/stripepayment/webhook` com eventos `payment_intent` e `setup_intent` [via snippet]. — [Cal.com Help – How to receive payments](https://cal.com/help/event-types/how-to-receive-payments); [Cal.com Docs – Stripe (self-hosting)](https://cal.com/docs/self-hosting/apps/install-apps/stripe)
- SimplyBook.me [via snippet]: página de ajuda lista "Stripe(SCA), PayPal, and PayPal Checkout"; marketing: "Stripe, PayPal, PayFort, Mollie, Adyen and many more"; integração SBPay.me. Sem menção a Multibanco/MB WAY. — [SimplyBook.me Help – SBPay.me integration](https://help.simplybook.me/index.php/SBPay.me_integration); [SimplyBook.me – Accept payments](https://simplybook.me/en/accept-payments-through-your-booking-page)
- Acuity [via snippet]: processadores Stripe, Square, PayPal; "It's not possible to connect Stripe and Square at the same time."; Square hardware só EUA; moedas "over two dozen"; sem MB WAY. — [Acuity Help – Payment processors you can connect](https://help.acuityscheduling.com/hc/en-us/articles/16676914206477-Payment-processors-you-can-connect-to-Acuity)
- Zcal [via snippet]: ajuda descreve só integração Stripe (valor por reserva, moeda, reembolso manual no painel Stripe). — [Zcal Help – Stripe](https://help.zcal.co/integrations/stripe)
- TidyCal [terceiros, conflitantes]: maioria cita Stripe e PayPal; uma fonte diz só Stripe. — [AppSumo – TidyCal](https://appsumo.com/products/m/tidycal/); [SchedulingKit – TidyCal review (terceiro)](https://schedulingkit.com/reviews/tidycal-review)
- Fresha [via snippet]: "available in 120+ countries"; página de pagamentos promete "localised options for every market" sem lista; terceiro: Fresha "can only serve merchants in countries they're licensed for". Booksy: nenhuma lista encontrada. — [Fresha – Payments](https://www.fresha.com/en-GB/for-business/features/payments); [PaymentProviders.io – Fresha (terceiro)](https://paymentproviders.io/apply/fresha)

### Inferences
- A única via para uma dessas ferramentas mostrar MB WAY seria conectar uma conta Stripe de país elegível (ex.: PT/ES/IE) — o que exige entidade local e foge do escopo. Com conta Stripe BR, o comprador verá cartão/wallets em BRL ou EUR conforme as moedas de apresentação permitidas à conta BR.
- Mollie (citada no marketing do SimplyBook.me) suporta MB WAY, mas exige empresa na UE/EEE (conhecimento geral, não verificado aqui).

### Gaps
- Booksy e Fresha: países de operação e métodos de pagamento não localizados.
- Não verifiquei se uma conta Stripe brasileira pode apresentar preços em EUR para a Calendly/Cal.com (moedas de apresentação por país não extraídas).

---

## Pergunta-chave 6: API/webhooks para site próprio; e implicações fiscais/legais no Brasil de receber EUR numa conta no exterior (CBE, IOF, Receita Federal)

### Takeaway
Paddle, Whop, Polar, Lemon Squeezy, FastSpring e 2Checkout têm APIs e webhooks públicos (Paddle expõe inclusive `/countries` com `allow_sales`; Stripe emite `charge.dispute.created` para disputas MB WAY; Cal.com documenta webhook de pagamento). No plano fiscal: a CBE ao Banco Central só é exigida se o total de ativos no exterior em 31/12 for ≥ US$ 1 milhão (Resolução BCB 279/2022; janela 15/fev–5/abr); rendimentos de serviços recebidos do exterior por pessoa física são tributados mensalmente pelo carnê-leão (tabela progressiva, conversão USD→BRL pela cotação do BCB); e o IOF-câmbio sobre ingresso de receitas de exportação de serviços é zero (art. 15-B do Decreto 6.306/2007), com a Receita entendendo que valores mantidos no exterior e internados depois sofrem 0,38%.

### Cited Findings

**APIs / webhooks**
- Paddle: "The status of a country is available from the /countries endpoint... `allow_sales` field" [via snippet]; recomenda "keeping a list of supported countries in your own database and checking for updates through the Paddle API". — [Paddle API – Countries](https://developer.paddle.com/api-reference/countries); [Paddle Developer – Supported sellers](https://developer.paddle.com/partners/embed-billing/get-started/supported-sellers)
- Stripe MB WAY: notificação de disputa por e-mail, Dashboard e "An API `charge.dispute.created` event (if your integration is set up to receive webhooks)"; "Connect support: Yes"; capacidade `mb_way_payments`. — [Stripe Docs – MB WAY](https://docs.stripe.com/payments/mb-way)
- Polar: referência de API de checkout sessions (create/get/update/confirm). — [Polar Docs – Get Checkout Session](https://polar.sh/docs/api-reference/checkouts/get-session); [Polar Docs – Embedded Checkout](https://polar.sh/docs/features/checkout/embed)
- Lemon Squeezy: guia de desenvolvedor "Taking Payments". — [Lemon Squeezy Docs – Taking Payments](https://docs.lemonsqueezy.com/guides/developer-guide/taking-payments)
- Cal.com: webhook `/api/integrations/stripepayment/webhook` (eventos `payment_intent`, `setup_intent`) [via snippet]. — [Cal.com Docs – Stripe](https://cal.com/docs/self-hosting/apps/install-apps/stripe)
- FastSpring e 2Checkout: documentação de desenvolvedor pública (payment methods, configure payment methods; JSON-RPC API 6.0). — [FastSpring Docs – Configure payment methods](https://developer.fastspring.com/docs/configure-payment-methods); [2Checkout Docs – JSON-RPC API](https://docs.2checkout.com/json-rpc-api-reference/json-rpc-api-6.0/api-requests/place-orders-with-catalog-products)

**CBE (Banco Central)**
- "A realização da declaração de CBE está prevista na Lei 14.286 de 2021, regulamentada na Resolução BCB 279 de 2022." Declaração anual exigida "quando, na data-base de 31 de dezembro de cada ano, o total de bens e valores do declarante no exterior for igual ou superior a 1 milhão de dólares"; trimestral quando "igual ou superior a 100 milhões de dólares" em 31/03, 30/06 e 30/09; janela "entre 15 de fevereiro e 5 de abril do ano subsequente à data-base" [via snippet]. — [BCB – Manual CBE (a partir de 2017)](https://bcb.gov.br/content/estabilidadefinanceira/cambiocapitais/Manuais_CBE/Manual_CBE_a_partir_de_2017.pdf); [gov.br – Declarar CBE](https://www.gov.br/pt-br/servicos/preencher-declaracao-de-capitais-brasileiros-no-exterior)
- Histórico: "Desde 2004, a declaração anual de CBE é obrigatória para montantes iguais ou superiores ao equivalente a US$100.000,00"; elevação para US$ 1 milhão proposta em 2020 [via snippet]. — [BCB – Voto 78/2020-CMN](https://normativos.bcb.gov.br/Votos/CMN/202078/Voto_0782020_CMN.pdf)
- Fiscalização: decisão do BCB de fev/2026 puniu declarante que entregou CBE "fora do prazo regulamentar, com atraso de 366 dias" [via snippet]. — [BCB – Decisão 442/2026](https://www.bcb.gov.br/conteudo/decap/Decisoes/300969168612457920260211T11003376916.pdf)
- Ativos declaráveis incluem "depósitos" [via snippet] — ou seja, saldo em EUR numa Wise/Payoneer conta para o teste do limite. — [BCB – Capitais internacionais](https://www.bcb.gov.br/rex/legce/port/capitaisinternacionais.asp?frame=1)

**Imposto de renda (Receita Federal) – carnê-leão**
- "Estão sujeitos ao pagamento do Carnê-leão os rendimentos recebidos de fontes situadas no exterior por pessoa física residente no Brasil" [via snippet]; recolhimento "até o último dia útil do mês subsequente ao do recebimento do rendimento"; "Os rendimentos recebidos de fontes situadas no exterior, bem como o imposto pago, devem ser convertidos em dólar dos Estados Unidos da América" e depois em reais pela cotação fixada pelo BCB; tabela progressiva mensal; deduções (livro-caixa, dependentes, previdência). — [Receita Federal – Orientações Gerais Carnê-Leão](https://www.gov.br/receitafederal/pt-br/assuntos/orientacao-tributaria/declaracoes-e-demonstrativos/dirpf/carne-leao); [Receita Federal – Manual do Carnê-Leão](https://www.gov.br/receitafederal/pt-br/assuntos/meu-imposto-de-renda/pagamento/carne-leao/manual); [gov.br – Apurar carnê-leão](https://www.gov.br/pt-br/servicos/apurar-carne-leao)
- Sistema Carnê-Leão Web com login gov.br [terceiro, 2026]. — [Fast Company Brasil – Carnê-leão 2026](https://fastcompanybrasil.com/money/carne-leao-2026-quem-precisa-pagar-como-preencher-e-qual-o-valor/)

**IOF-câmbio**
- Regra: alíquota geral 0,38% (art. 15-B, caput, Decreto 6.306/2007); "operações de câmbio de ingresso de receitas de exportação de bens e serviços" têm alíquota zero; Receita (Solução de Consulta nº 246): "há a incidência do IOF na operação de câmbio à alíquota zero, conforme expressa previsão no art. 15-B do Decreto nº 6.306, de 2007"; mas se os recursos ficarem no exterior e forem internados depois de concluída a exportação, "haverá incidência de IOF à alíquota de 0,38%, conforme determina o caput do art. 15-B" [via snippet]. Decisão judicial contestou essa leitura (Conjur) [terceiro/jurídico]. — [Conjur – Entendimento Receita incidência IOF (PDF)](https://www.conjur.com.br/wp-content/uploads/2023/09/entendimento-receita-incidencia-iof.pdf); [Lacerda Gama – IOF-câmbio sobre ingresso de receitas de exportação (terceiro)](https://www.lacerdagama.com.br/post/incidência-do-iof-câmbio-sobre-o-ingresso-de-receitas-de-exportação-no-brasil)
- 2025: Decreto 12.466/2025 (majoração de IOF) "Revogado pelo Decreto nº 12.499, de 11/6/2025" [via snippet]; Decreto 12.467/2025 restabeleceu alíquotas pontuais (Demarest) [terceiro]. A alíquota zero para exportação de serviços não foi alterada segundo as fontes encontradas. — [Câmara – Decreto 12.466/2025 (norma atualizada)](https://www2.camara.leg.br/legin/fed/decret/2025/decreto-12466-22-maio-2025-797486-normaatualizada-pe.pdf); [Demarest – Majoração IOF (PDF)](https://demarest.com.br/wp-content/uploads/2025/05/DEMAREST_Majoracao_IOF.pdf)
- Husky (fintech) afirma IOF "0,38% a 7,38%" podendo ser zero "para certos pagamentos de serviços exportados do Brasil". — [Husky](https://www.husky.io/)
- IOF de 1,1% para transferências entre contas do mesmo titular (recursos próprios) e 0,38% entre titulares diferentes [terceiros, não verificado em fonte oficial]. — [Renova Invest – Remessa de câmbio 2026 (terceiro)](https://renovainvest.com.br/?p=14087)

### Inferences
- Para um autônomo recebendo centenas/milhares de euros por mês, a CBE é irrelevante na prática (limite de US$ 1 milhão), mas o saldo mantido no exterior em 31/12 deve constar na ficha "Bens e Direitos" da DIRPF (obrigação distinta da CBE — ver gap).
- O ponto fiscal mais sensível é a natureza do câmbio na internação: se a fintech classificar como "exportação de serviços" (zero IOF) ou como "disponibilidade no exterior/recursos próprios" (0,38% ou 1,1%). O "payout de MoR" (a MoR é a compradora formal do serviço/produto) tende a ser enquadrado como receita de exportação, mas isso depende do contrato de câmbio da fintech.
- MEI: a tributação é pelo DAS fixo e não pelo carnê-leão; porém não localizei nesta pesquisa fonte oficial sobre limites/condições para MEI exportar serviços (gap).

### Gaps
- Não consegui abrir o texto consolidado do Decreto 6.306/2007 no Planalto (503) para citar literalmente a redação vigente do art. 15-B em 2026.
- Não localizei fonte oficial sobre a obrigação de declarar saldos em contas no exterior na DIRPF ("Bens e Direitos", códigos de conta corrente no exterior) nem sobre a Lei 14.754/2023 (tributação de rendimentos financeiros offshore) — ambas relevantes para quem mantém EUR em Wise/Payoneer.
- Não verifiquei regras do MEI para exportação de serviços (permissão, emissão de nota, limite de faturamento) nem a isenção de PIS/COFINS/ISS na exportação para PF.
- Não encontrei documentação oficial de webhooks da Whop e Gumroad nesta pesquisa (apenas existência de docs de desenvolvedor).
