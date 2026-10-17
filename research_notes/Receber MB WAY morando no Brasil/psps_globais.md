# PSPs globais (Stripe, Adyen, Mollie, Checkout.com, PayPal, Viva, SumUp, Worldline/Unzer): pode um comerciante residente no Brasil (CPF ou CNPJ/MEI, sem NIF/morada/atividade em Portugal) aceitar MB WAY de clientes em Portugal?

Data da pesquisa: 2026-10-17. Todas as fontes abaixo foram consultadas nessa data; páginas com data própria estão marcadas. Observação metodológica: várias páginas oficiais (Adyen help center, Mollie help center, Checkout.com support, Viva help/developer, SumUp países) devolveram 403/503 ao fetch direto; nesses casos a informação vem do snippet de busca da própria página oficial e está marcada como "(snippet)". Fontes de terceiros estão marcadas "(terceiro, não verificado)".

**Resumo executivo (para o redator):** Nenhum dos oito provedores documenta MB WAY como disponível para uma conta de comerciante sediada no Brasil. Stripe, Adyen, Checkout.com, Mollie e PayPal publicam explicitamente as "business locations" de MB WAY e o Brasil não consta em nenhuma; a PayPal chega a excluir o Brasil nominalmente ("except in Russia, Japan, and Brazil"). Mollie, Viva, SumUp (Portugal), Worldline Direct e Unzer só aceitam comerciantes sediados na EEE/Reino Unido/Suíça (Mollie) ou na Europa (Viva, Worldline), portanto uma conta brasileira nem sequer pode ser aberta. Os únicos provedores da lista que aceitam comerciantes brasileiros (Stripe BR, PayPal BR, SumUp BR, Adyen com entidade local) não oferecem MB WAY nessas contas. A via indireta Stripe Connect (plataforma PT + conta conectada BR) não é suportada oficialmente: a disponibilidade de capabilities de método de pagamento é determinada pelo país da conta conectada, e o Stripe exige que plataforma e conta conectada estejam na mesma região salvo US/UK/EEE/CA/CH. Substitutos disponíveis a uma conta Stripe Brasil: cartões internacionais (3,99% + R$0,39 + 2% internacional), Apple Pay e Google Pay (BR consta nas listas de disponibilidade), mas **não** Multibanco (lista de business locations também sem BR).

---

## Pergunta 1 — O provedor aceita comerciantes sediados no Brasil? Quais tipos de entidade?

### Takeaway
Apenas Stripe, PayPal e SumUp (via operação brasileira) aceitam cadastro self-service de comerciantes residentes no Brasil (pessoa física com CPF ou pessoa jurídica com CNPJ, incluindo MEI). Adyen opera no Brasil mas via contrato enterprise com volume mínimo. Mollie, Viva.com, Worldline Direct e Unzer são restritos a empresas sediadas na Europa (EEE/UK/CH), e a Checkout.com condiciona à "legal entity location" aprovada — nenhuma dessas publica o Brasil como país de comerciante.

### Cited Findings

**Stripe**
- A página global do Stripe lista "Brazil" entre os países suportados sem ressalva (sem "Preview" nem "Extended network"): "Stripe is currently supported in the following countries/regions: Australia, Austria, Belgium, Brazil, Bulgaria, Canada, ..." — [Stripe Global](https://stripe.com/global)
- Tipos de entidade aceitos no Brasil: "Individuals and sole proprietorships (Pessoa Física) and companies (Pessoa Jurídica)"; "A CPF or CNPJ number" (CNPJ opcional para PF); representante legal "must be resident in Brazil"; é exigido "A business address in Brazil"; conta bancária "BRL denominated" "associated to the tax ID (CPF or CNPJ) registered in your Stripe account" — [Stripe Support: Brazil-specific information to open a Stripe account](https://support.stripe.com/questions/information-needed-to-open-a-stripe-account-in-brazil)
- Documentos aceitos: CNH ou RG com CPF para o representante; para empresa, Contrato Social, Estatuto Social, CCMEI (certificado MEI) ou Requerimento de Empresário Individual (snippet) — [Stripe Support: Accepted documents for verification in Brazil](https://support.stripe.com/questions/accepted-documents-for-verification-in-brazil)
- Conta bancária de payout: "a Brazilian-based BRL-denominated bank account with a domiciled institution"; "a checking account under the CPF or CNPJ associated to your Stripe account"; para PJ "the bank account must be linked to the same CNPJ, including ME and MEI accounts"; "A mismatch in this information will cause payouts to fail." — [Stripe Support: Supported bank accounts in Brazil](https://support.stripe.com/questions/supported-bank-accounts-in-brazil)
- Atualização 2026 de verificação (snippet): CPF deve estar regular na Receita Federal, endereço comprovado e localizado no Brasil, CNPJ ativo; cada conta "Legal Entity" vinculada a um único CNPJ verificado — [Stripe Support: 2026 updates to Brazil verification requirements](https://support.stripe.com/questions/2026-updates-to-brazil-verification-requirements)

**PayPal**
- A PayPal publica tabela de tarifas de vendedor para o Brasil ("Última atualização: 16 de julho de 2025"), o que confirma a operação de contas comerciais no país — [PayPal Brasil: Tarifas para vendedores](https://www.paypal.com/br/webapps/mpp/merchant-fees)
- "A conta bancária deve ter a mesma titularidade (CPF/CNPJ) que a conta do PayPal." "Somente contas bancárias brasileiras podem ser adicionadas a uma conta do PayPal brasileira." — [PayPal Brasil Ajuda: transferir saldo](https://www.paypal.com/br/cshelp/article/como-fazer-para-transferir-saldo-da-minha-conta-do-paypal-help394)

**Adyen**
- A página de preços da Adyen declara "We do have a minimum invoice depending on industry or business model" e remete a vendas; não publica lista de países de elegibilidade ("The country list is a location filter for payment methods, not an eligibility requirement") — [Adyen Pricing](https://www.adyen.com/pricing)
- A documentação de pagamentos presenciais da Adyen lista "Brazil" entre os mercados suportados nas Américas (snippet; refere-se a terminais POS, não a onboarding online) — [Adyen Docs: POS supported countries](https://docs.adyen.com/point-of-sale/what-we-support/supported-languages)
- Fontes de terceiros (Shuttle, Spreedly) listam Brasil entre países de onboarding Adyen (terceiro, não verificado) — [Shuttle: proc-adyen](https://docs.shuttleglobal.com/docs/proc-adyen); [Spreedly Adyen factsheet](https://developer.spreedly.com/docs/adyen-factsheet)

**Mollie**
- "We offer our services to companies based within the European Economic Area (EEA), Switzerland or the United Kingdom." Lista de 31 entradas, com Chipre, Liechtenstein e Malta marcados: "There is a minimum sales volume required for companies based in these countries." (snippet; página devolveu 403 ao fetch) — [Mollie Help: Can I use Mollie's services in my country?](https://help.mollie.com/hc/en-us/articles/115002116105)
- Em junho de 2026 a Mollie anunciou estar operacional em todos os países da EEE após lançar Croácia e Islândia — [Mollie news, jun/2026](https://secure.mollie.nl/news/mollie-investment-european-expansion)
- Resposta de suporte de plugin Mollie (snippet, terceiro): "if you have a company based outside of the EEA, Switzerland or the United Kingdom, we cannot provide our services to your business" — [remarpro.com thread](https://remarpro.com/support/?p=15991728)

**Checkout.com**
- A página de MB WAY da Checkout.com condiciona os países de comerciante a "Subject to service agreements, legal entity location and presence, and company compliance approval." — [Checkout.com: MB WAY](https://www.checkout.com/payment-methods/mb-way)
- Página de suporte sobre indústrias classifica em "Restricted" e "Prohibited" ("When assessing a your eligibility, we classify industries and sectors that are involved in specific activities as 'Restricted' or 'Prohibited'") (snippet; 403 ao fetch) — [Checkout.com Support 15260165363602](https://support.checkout.com/hc/en-us/articles/15260165363602)
- Não localizei página oficial da Checkout.com com lista de países de entidade elegível (a URL /docs/get-started/supported-countries devolveu 404).

**Viva.com**
- A página "About Viva" do developer portal descreve "presence in 29 countries in Europe" (snippet; 503 ao fetch) — [Viva developer: About Viva](https://developer.viva.com/about-viva/)
- Diretório Mastercard lista Áustria, Bélgica, Portugal e ~20 outros mercados europeus (terceiro) — [Mastercard Engage: Viva.com](https://engagepartners.mastercard.com/English/directory/partner/2464105/viva-com)
- Nenhuma fonte Viva menciona Brasil ou qualquer país fora da Europa.

**SumUp**
- SumUp Portugal publica preços sem indicar requisito de NIF/registo na página; a SumUp opera no Brasil desde 2013 (fonte de 2013, antiga) — [SumUp PT preços](https://www.sumup.com/pt-pt/precos/); [TNW, 13/11/2013 (antigo)](https://thenextweb.com/la/2013/11/13/sumup-expands-mobile-point-sale-technology-latin-america-kicking-brazil/)
- Comunicado SumUp de 2017 fala em 31 países (antigo) — [SumUp press: 15 new markets](https://sumup.com/press/sumup-launches-15-markets)

**Worldline Direct / Unzer**
- Chargebee (terceiro): "Worldline Online Payments is available for companies based in Europe. Contact the Worldline Online Payments team to confirm availability in your preferred countries." — [Chargebee: Ingenico/Worldline Direct](https://chargebee.com/docs/ingenico-direct.html)
- Foxy (terceiro) lista ~20 países europeus de onboarding Worldline Direct (Áustria, Bélgica, Bulgária, Chéquia, Dinamarca, Finlândia, França, Alemanha, Croácia, Hungria, Itália, Luxemburgo, Países Baixos, Noruega, Polónia, Roménia, Eslováquia, Eslovénia, Espanha, Suécia) — [Foxy help: Worldline hosted](https://foxy.io/help/payment-methods/worldline-hosted)
- A página de métodos de pagamento da Unzer tem coluna "Available in" por método (ex.: "All countries", "Austria, Germany") mas não publica lista de países de comerciante — [Unzer Docs: Payment methods](https://docs.unzer.com/payment-methods/)

### Inferences
- Para o perfil em questão (CPF/MEI no Brasil, sem NIF/morada em Portugal), só é realista abrir conta na Stripe BR, PayPal BR ou SumUp BR. Mollie, Viva, Worldline Direct e Unzer estão fora por exigirem sede europeia; Adyen e Checkout.com são enterprise com aprovação caso a caso e não publicam o Brasil como país elegível de entidade.
- A Stripe BR exige endereço comercial no Brasil e conta bancária em BRL vinculada ao mesmo CPF/CNPJ; isso é compatível com MEI/CPF mas fixa a conta como "Brasil" para fins de disponibilidade de métodos (ver Pergunta 2).

### Gaps
- Não encontrei lista oficial da Adyen de países onde um comerciante pode contratar (help.adyen.com não apareceu nas buscas); só evidência indireta de POS no Brasil e de terceiros.
- Não encontrei lista oficial atual de países da SumUp nem da Viva.com (páginas devolveram 503); a cobertura de países da Viva vem de snippet ("29 countries in Europe") e de terceiros.
- Não encontrei página oficial da Checkout.com com países de entidade elegível.

---

## Pergunta 2 — MB WAY consta como disponível para comerciantes localizados no Brasil? (listas exatas de "business locations")

### Takeaway
Em nenhum provedor o Brasil aparece na lista de países de comerciante de MB WAY. Stripe (40 países, sem BR), Checkout.com (28 países europeus), Mollie (EEE/UK/CH), Adyen (PT), Worldline Direct (Portugal), PayPal ("globally, except in Russia, Japan, and Brazil"). Unzer e SumUp Portugal nem sequer listam MB WAY como método.

### Cited Findings

**Stripe**
- Lista exata: "Stripe accounts in the following countries can accept MB WAY payments: AT, AU, BE, BG, CA, CH, CY, CZ, DE, DK, EE, ES, FI, FR, GB, GI, GR, HK, HR, HU, IE, IT, JP, LI, LT, LU, LV, MT, MX, NL, NO, NZ, PL, PT, RO, SE, SG, SI, SK, US" (40 países; **BR ausente**). Customer locations: "Portugal". Presentment currency: "EUR". Recurring: "No". — [Stripe Docs: MB WAY payments](https://docs.stripe.com/payments/mb-way)
- Tabela de suporte por país confirma: "MB WAY | EUR | AU, AT, BE, BG, CA, HR, CY, CZ, DK, EE, FI, FR, DE, GI, GR, HK, HU, IE, IT, JP, LV, LI, LT, LU, MT, MX, NL, NZ, NO, PL, PT, RO, SG, SK, SI, ES, SE, CH, GB, US | PT" — [Stripe Docs: Payment method support](https://docs.stripe.com/payments/payment-methods/payment-method-support)
- A página de preços de métodos locais do Stripe Brasil lista apenas cartões, Pix (1,19%) e Boleto (R$ 3,45): "MB WAY and Multibanco do not appear anywhere on this Brazil page." — [Stripe BR: métodos de pagamento locais](https://stripe.com/br/pricing/local-payment-methods)
- Regra geral: "You can accept additional payment methods based on your Stripe account's country, which you configure when you set up your Stripe account." — [Stripe Docs: Supported currencies](https://docs.stripe.com/currencies)

**Adyen**
- Tabela do método: "Countries: PT | Currencies: EUR | Recurring: ✗ | Refunds: ✓ | Partial refunds: ✓ | Chargebacks: ✗". "MB WAY is a Multibanco solution, but you do not need a contract with Multibanco if you integrate through Adyen." A página não indica requisitos de país de comerciante. — [Adyen Docs: MB WAY](https://docs.adyen.com/payment-methods/mb-way)

**Mollie**
- "Supported merchant locations: European Economic Area (EEA), United Kingdom, Switzerland"; país do cliente "PT"; moeda "EUR"; reembolsos até "120 days"; chargeback "No"; recorrência "No"; mínimo "EUR 0.01", máximo "EUR 5000.00" — [Mollie Docs: MB WAY](https://docs.mollie.com/docs/mbways)

**Checkout.com**
- "Merchant countries: France, Germany, Austria, Belgium, Croatia, Cyprus, Czech Republic, Denmark, Estonia, Finland, Greece, Hungary, Iceland, Ireland, Italy, Latvia, Liechtenstein, Luxembourg, Malta, Netherlands, Norway, Poland, Portugal, Romania, Slovakia, Slovenia, Spain, Sweden" (28 países; **BR ausente**); "Consumer countries: Portugal"; "Processing currency: EUR; Settlement currency: EUR"; nota: "Subject to service agreements, legal entity location and presence, and company compliance approval." — [Checkout.com: MB WAY](https://www.checkout.com/payment-methods/mb-way)
- Doc técnica: "To enable MB WAY payments on your account, contact your account manager or request support." Tipo "Digital wallet", fluxo "Direct". — [Checkout.com Docs: MB WAY](https://checkout.com/docs/payments/add-payment-methods/mb-way)

**PayPal**
- "Available to merchants globally, except in Russia, Japan, and Brazil." País do comprador: "PT"; moeda EUR; reembolsos "within 395 days"; "Chargebacks aren't supported"; produto em "beta" via Orders V2 API; "Progressive Onboarding isn't supported for APMs." — [PayPal Developer: MB WAY](https://developer.paypal.com/mbway)
- Nenhum resultado de busca indica MB WAY disponível em contas PayPal Brasil (a busca "PayPal MB WAY aceitar pagamentos" não retornou página PayPal).

**Viva.com**
- Developer doc de MB WAY: "there is no need for the merchant to have an account with MB WAY"; ativação no dashboard Viva em "API Access" (snippet; 503 ao fetch). Help center: "Cross-currency payments: Not yet supported for MB WAY" (snippet) — [Viva Developer: MB WAY](https://developer.viva.com/payment-methods/local-payment-methods/mbway/); [Viva Help: MB WAY](https://euhelp.viva.com/en/articles/6967357-mb-way)
- Comunicado de 7/9/2026: ligação direta à rede Multibanco dá à rede de comerciantes Viva.com acesso a "more than nine million MB cardholders and more than seven million MB WAY users in Portugal"; cobertura de imprensa fala em "Viva.com merchants operating across Europe" — [Viva.com blog, set/2026](https://www.viva.com/en-pt/blog/viva.com-connects-directly-to-multibanco); [Fintech Times](https://thefintechtimes.com/viva-com-achieves-direct-integration-with-portugals-multibanco-payment-network/)

**SumUp**
- Página de preços SumUp Portugal: "MB WAY: não aparece na página. A lista de modos de pagamento inclui Visa, Mastercard, Maestro, Amex, Apple Pay, Google Pay, NFC, entre outros, mas não MB WAY" — [SumUp PT preços](https://www.sumup.com/pt-pt/precos/)
- Busca "SumUp MB WAY Portugal taxa" não retornou nenhuma página SumUp sobre MB WAY.

**Worldline Direct**
- "Supported countries: Portugal"; "Supported currencies: Euro (EUR)"; "Partial/multiple/full refunds"; Hosted Checkout Page, payment product ID 5908 — [Worldline Direct Docs: MB Way](https://docs.direct.worldline-solutions.com/payment-methods-and-features/payment-methods/mb-way)

**Unzer**
- Lista de métodos Unzer (Alipay, Apple Pay, Bancontact, Card, EPS, Google Pay, iDEAL, Klarna, PayPal, PayU, Przelewy24, PostFinance, TWINT, Unzer Bank Transfer, SEPA DD, Direct Debit, Installment, Invoice, Prepayment, WeChat Pay, Wero): "MB WAY and Multibanco: Neither appears on the page." — [Unzer Docs: Payment methods](https://docs.unzer.com/payment-methods/)

### Inferences
- A exclusão nominal do Brasil pela PayPal é o sinal mais forte de que há um impedimento estrutural (regulatório/câmbio) e não só falta de implementação: PayPal BR existe, mas MB WAY é vedado precisamente para o Brasil (junto com Rússia e Japão).
- No Stripe, as business locations de MB WAY incluem países fora da Europa (AU, CA, HK, JP, MX, NZ, SG, US), o que mostra que a exclusão do Brasil não é "só Europa"; México está e Brasil não — coerente com a nota do Stripe sobre controle cambial no Brasil ("Remittance to or from countries with foreign exchange control (including, but not limited to, Brazil) is carried out exclusively through authorized channels" — [Stripe Docs: Supported currencies](https://docs.stripe.com/currencies)).
- Para Worldline Direct, "Supported countries: Portugal" na página do método parece referir-se ao país do consumidor; não há lista de países de comerciante, mas a plataforma só aceita empresas europeias (terceiros), logo o Brasil está excluído de qualquer forma.

### Gaps
- Viva.com: não consegui obter a lista "Available in" de MB WAY (developer page 503); o snippet diz "available in a wide range of countries" sem nomeá-los. Dado que a Viva só opera na Europa, o Brasil não está incluído, mas a lista exata não foi capturada.
- Adyen: a doc pública só traz "PT/EUR" na tabela; não há lista separada de países de comerciante.
- Worldline Direct: a lista de países de comerciante elegíveis para MB WAY não está na página.

---

## Pergunta 3 — Existe alguma via indireta oficialmente suportada (Connect/plataforma, marketplace, entidade transfronteiriça)?

### Takeaway
Não para o Stripe: a disponibilidade de `mb_way_payments` para uma conta conectada depende de a conta conectada estar numa "supported business location" (Brasil não está), e o Stripe só permite plataforma e conta conectada em regiões diferentes entre US/UK/EEE/CA/CH — em "other scenarios, your platform and any connected account must be in the same region". Nenhum outro provedor documenta via indireta para entidade brasileira.

### Cited Findings
- Stripe Connect + MB WAY: "A Connect platform can use Stripe Connect with MB WAY to process connected account payments of all charge types." Contas Standard "can enable MB WAY through their Dashboard"; para Express/Custom "request the mb_way_payments capability using the Capabilities API" — [Stripe Docs: MB WAY — Connect](https://docs.stripe.com/payments/mb-way)
- Regra de país para capabilities de método de pagamento: na tabela de capabilities, a coluna "Country availability" para todos os métodos locais diz "Connected account must be in a supported business location" (com link para as business locations do método). "For connected accounts with access to the full Stripe Dashboard, including Standard accounts, some capabilities are requested automatically, based on their country." — [Stripe Docs: Account capabilities](https://docs.stripe.com/connect/account-capabilities)
- Região da plataforma vs. conta conectada: "Stripe supports cross-border transfers on the payments balance between the United States, Canada, United Kingdom, EEA, and Switzerland. In other scenarios, your platform and any connected account must be in the same region. Attempting to transfer funds across unsupported borders or balances returns an error." — [Stripe Docs: Account capabilities — Cross-border transfers](https://docs.stripe.com/connect/account-capabilities)
- Cross-border payouts: "Platforms based in the US, UK, EEA, Canada, or Switzerland can transfer funds to connected accounts in any of those regions... Stripe doesn't support self-serve cross-border payouts to countries outside the listed regions. Contact sales to discuss alternatives, or use Global Payouts." Fluxos suportados: apenas "Separate charges and transfers without on_behalf_of", "Top-ups and transfers", "Destination charges without on_behalf_of" (ou seja, a plataforma é merchant of record) — [Stripe Docs: Cross-border payouts](https://docs.stripe.com/connect/cross-border-payouts)
- Checkout.com: países de comerciante de MB WAY "Subject to service agreements, legal entity location and presence, and company compliance approval" — exige entidade legal e presença num dos 28 países — [Checkout.com: MB WAY](https://www.checkout.com/payment-methods/mb-way)
- PayPal: parceiros devem fazer onboarding dos comerciantes "before they accept payments (upfront)" e a exclusão "except in Russia, Japan, and Brazil" aplica-se a "merchants" — [PayPal Developer: MB WAY](https://developer.paypal.com/mbway)
- Adyen for Platforms: a verificação exigida depende do "legal entity type and operating country" do utilizador (snippet) — [Adyen Docs: Platforms onboard users](https://docs.adyen.com/platforms/onboard-users?tab=ca_1)

### Inferences
- Cenário "plataforma PT com conta conectada BR" no Stripe: (a) a conta conectada BR não pode receber a capability `mb_way_payments` porque BR não é business location de MB WAY; (b) direct charges / `on_behalf_of` ficam inviáveis; (c) mesmo o modelo em que a plataforma PT cobra MB WAY como merchant of record e transfere para a conta BR não é self-serve, pois o Brasil está fora das regiões de cross-border payouts (US/UK/EEE/CA/CH). Só restaria a plataforma PT cobrar MB WAY em nome próprio e pagar ao brasileiro fora do Stripe (ou via Global Payouts, que exige plataforma US/UK) — isto já não é "o comerciante brasileiro aceitar MB WAY", é a plataforma PT ser o vendedor.
- Em todos os provedores, a via "indireta" oficialmente suportada é a mesma: existir uma entidade/comerciante de registo num país elegível (PT ou outro país europeu listado) que seja o merchant of record. Nenhuma doc permite que a entidade de registo seja brasileira.

### Gaps
- Não há documentação pública Stripe sobre o que "Contact sales to discuss alternatives" significaria para payouts a contas conectadas no Brasil; pode existir acordo enterprise não publicado.
- Não verifiquei documentação da Adyen for Platforms para saber se uma plataforma PT pode criar "account holder" com entidade legal brasileira e que métodos ficariam disponíveis.

---

## Pergunta 4 — Tarifas exatas (EUR e BRL), taxa de conversão e mecânica/prazo de payout para banco brasileiro

### Takeaway
Para o comerciante brasileiro, as tarifas relevantes são as das contas BR (Stripe BR: cartões 3,99% + R$0,39 e +2% internacional; PayPal BR: 4,79% + fixo, +1,61% internacional, +3,5% de conversão, saque gratuito em até 3 dias úteis). As tarifas de MB WAY (Stripe PT 1,5% + €0,25; Mollie 1,50% + €0,25; Adyen $0,13 + 1,40% + €0,22) só se aplicam a contas europeias e por isso são apenas referência.

### Cited Findings

**Stripe — conta Brasil**
- "3.99% + R$ 0.39 por transação realizada para cartões nacionais"; "+2%" "para transações com cartões internacionais... após conversão para a moeda local"; Adaptive Pricing: "Os clientes incorrerão em uma tarifa de conversão a partir de 2%"; Pix "1.19%" (invitation-only); Boleto "R$ 3.45"; disputas R$ 55,00; sem taxa de setup/mensalidade; payouts "continuous, weekly, or monthly" (sem prazo indicado) — [Stripe BR Pricing](https://stripe.com/br/pricing)
- Payout exige "Brazilian-based BRL-denominated bank account" vinculada ao mesmo CPF/CNPJ — [Stripe Support: Supported bank accounts in Brazil](https://support.stripe.com/questions/supported-bank-accounts-in-brazil)
- Mecânica de conversão: "If the charge currency differs from your settlement currency, Stripe converts the charge to your settlement currency"; "See Stripe pricing for conversion costs"; "Remittance to or from countries with foreign exchange control (including, but not limited to, Brazil) is carried out exclusively through authorized channels" — [Stripe Docs: Supported currencies](https://docs.stripe.com/currencies)
- Status de payout padrão: "For standard payouts, this typically occurs 1-2 business days after submission" (doc genérica de Connect, não específica do Brasil) — [Stripe Docs: Payouts to connected accounts](https://docs.stripe.com/connect/payouts-connected-accounts)

**Stripe — conta Portugal (referência de MB WAY)**
- MB WAY: "1,5% + € 0,25"; "+1,5%" "para transações internacionais"; "+2%" "se for necessário converter a moeda". Multibanco: "2,95% + € 0,25 por cobrança concretizada"; "+2%" se conversão — [Stripe PT: métodos de pagamento locais](https://stripe.com/pt/pricing/local-payment-methods)
- Limites MB WAY: "Transaction amounts between 0.50 EUR and 5,000 EUR"; limite diário do utilizador 1.000 EUR ajustável até 10.000 EUR; reembolso até 365 dias; disputas possíveis (prazo de resposta 7 dias) — [Stripe Docs: MB WAY](https://docs.stripe.com/payments/mb-way)

**PayPal — conta Brasil** (página datada "16 de julho de 2025")
- Transação comercial doméstica: "4,79%" + tarifa fixa; tarifa fixa por moeda recebida: "0,60 BRL" e "0,35 EUR"; internacional: "A tarifa para recebimento de transações domésticas se aplica, mais a tarifa adicional" de "+1,61%" (total 6,40% + fixo); conversão de moeda: "4,50%" acima da taxa base (geral) e "3,50%" para "pagamentos recebidos em outra moeda"; transferência para banco "Sem Tarifas" — [PayPal Brasil: Tarifas para vendedores](https://www.paypal.com/br/webapps/mpp/merchant-fees)
- Prazo: "Depois de transferir o saldo, o valor estará disponível em sua conta bancária dentro de 3 dias úteis." — [PayPal Brasil Ajuda](https://www.paypal.com/br/cshelp/article/como-fazer-para-transferir-saldo-da-minha-conta-do-paypal-help394)
- Tecnoblog (2022, antigo): PayPal encerrou "contas de pagamento"/saldo em carteira no Brasil; transferências automáticas e não instantâneas — [Tecnoblog, 31/08/2022](https://tecnoblog.net/noticias/2022/08/31/paypal-encerra-saldo-e-clientes-reclamam-de-demora-em-transferencias/)

**Adyen (indicativo, conta europeia)**
- "a fixed processing fee + a fee determined by the payment method"; fixo "$0.13"; MB WAY "$0.13+1.40% + € 0.22"; cartões Visa/MC "$0.13+Interchange+ + 0.60%"; Amex "$0.13 + 3.95%"; sem taxa de conversão listada ("We can link multiple bank accounts with multiple currencies, so we don't have to convert the currency"); "We do have a minimum invoice depending on industry or business model"; "The fees outlined above are indicative" — [Adyen Pricing](https://www.adyen.com/pricing)

**Mollie (conta EEE/UK/CH)**
- MB WAY "1.50% + €0.25"; Multibanco "2.10% + €0.35"; cartões EEE consumidor "1.80% + €0.25", EEE comercial "2.90% + €0.25", não-EEE "3.25% + €0.25", Amex "2.90% + €0.25"; Apple/Google Pay "Rate defined by card used"; pagamentos em moeda não suportada "will automatically be converted to your primary currency before being paid out"; até 5 payouts/mês grátis, depois €0,25; payout em moeda diferente da principal "1% of the payout amount" — [Mollie Pricing](https://www.mollie.com/pricing)

**SumUp Portugal (conta PT)**
- Presencial "1,50%" (ou "0,75%" no Pagamentos Plus para quem "processar 3900 € ou mais por mês"); online/Links de Pagamento "2,75%"; MB WAY não listado — [SumUp PT preços](https://www.sumup.com/pt-pt/precos/)

**Checkout.com / Viva / Worldline / Unzer**
- Checkout.com: MB WAY com "Processing currency: EUR; Settlement currency: EUR" — [Checkout.com: MB WAY](https://www.checkout.com/payment-methods/mb-way). Nenhuma tarifa pública de MB WAY encontrada.
- Viva: "Cross-currency payments: Not yet supported for MB WAY" (snippet) — [Viva Help: MB WAY](https://euhelp.viva.com/en/articles/6967357-mb-way). Nenhuma tarifa pública de MB WAY encontrada.
- Worldline Direct / Unzer: nenhuma tarifa pública encontrada.

### Inferences
- Cenário realista com conta Stripe BR recebendo €100 de cartão português: 3,99% + R$0,39 + 2% (internacional) ≈ 6% + R$0,39, com liquidação em BRL pela taxa Stripe do dia; a página BR não publica um percentual de FX separado além do "+2% internacional" (ver gap).
- Cenário com PayPal BR recebendo €100: 4,79% + 1,61% + €0,35 fixo + 3,5% de spread cambial ≈ 9,9% + fixo; saque gratuito em até 3 dias úteis.
- As tarifas de MB WAY (~1,5% + €0,25) são materialmente mais baixas, mas inacessíveis sem conta europeia.

### Gaps
- Não encontrei na página de preços Stripe BR um percentual explícito e isolado de "conversão de moeda" para conta brasileira liquidando EUR→BRL (apenas o "+2% internacional" e a Adaptive Pricing "a partir de 2%"); a doc genérica remete a "See Stripe pricing for conversion costs". Fontes de terceiros citam 2% ou 1,5%, não verificadas.
- Não encontrei prazo oficial de payout (D+n) para contas Stripe Brasil nas páginas consultadas.
- Tarifas de MB WAY da Checkout.com, Viva.com e Worldline não são públicas.

---

## Pergunta 5 — Restrições de categoria para serviços espirituais / psíquicos / tarot / astrologia, por país

### Takeaway
Stripe só proíbe "Psychic services and fortune tellers" em Tailândia e Japão (listas por jurisdição); a lista do Brasil e a de Portugal não contêm tal entrada, e a lista global só tem "'Get rich quick' schemes". A Adyen classifica "Services associated with pseudoscience (e.g. clairvoyance, horoscopes)" como Restricted (R) — due diligence, não proibição. Para Mollie, Checkout.com, PayPal, Viva, SumUp, Worldline e Unzer não consegui obter o texto completo das listas.

### Cited Findings
- Stripe (página atualizada em 2026-09-22): Tailândia — "Psychic services and fortune tellers P" (P = Prohibited); Japão — "Psychic services and fortune tellers" na secção de proibidos por jurisdição; global — "'Get rich quick' schemes, including investment opportunities or other services that promise high rewards" (Prohibited, em "Unfair, deceptive, or abusive acts or practices"); Brasil — lista específica contém apenas "genital and nipple jewelry, genital prosthetics, and sex accessories"; Portugal — "no jurisdiction-specific entries". "Astrology, horoscopes, tarot, occult, and general spiritual services don't appear." — [Stripe: Restricted Businesses](https://stripe.com/legal/restricted-businesses)
- Adyen: "Services associated with pseudoscience (e.g. clairvoyance, horoscopes)" — "Restricted (R)" para Merchant e Platform/Partner Business; "Fake references and other services or products that foster deception" — "Prohibited (P)"; "Social and Religious Campaigning" — Restricted (R) — [Adyen: List of restricted and prohibited products and services](https://www.adyen.com/legal/list-restricted-prohibited)
- Mollie (snippet; 403 ao fetch): categorias não aceites incluem erótica, certos serviços financeiros (cripto, transferências de dinheiro não licenciadas), armas, medicamentos sujeitos a receita, narcóticos, alguns suplementos, bens ilegais/roubados, jogo; snippet truncado, sem menção a serviços psíquicos no trecho visível — [Mollie Help: Which products and services does Mollie not accept?](https://help.mollie.com/hc/en-us/articles/115000939369-Which-products-and-services-does-Mollie-not-accept)
- Checkout.com (snippet; 403 ao fetch): classifica indústrias em "Restricted" (onboarding possível após due diligence adicional) e "Prohibited" (atividade ilegal, marketing enganoso, conteúdo impróprio); serviços psíquicos não aparecem no excerto — [Checkout.com Support](https://support.checkout.com/hc/en-us/articles/15260165363602)
- Stripe docs: cada método de pagamento pode impor "additional prohibited and restricted businesses" próprios, descritos na doc do método ou nos payment terms — [Stripe Docs: Payment method support](https://docs.stripe.com/payments/payment-methods/payment-method-support). A página de MB WAY do Stripe não lista categorias proibidas específicas do método — [Stripe Docs: MB WAY](https://docs.stripe.com/payments/mb-way)
- Para contexto de setor (terceiro, não é PSP da lista): Bank of Valletta proíbe "fortune tellers, tarot card readers and mystics" — [BOV restricted and prohibited categories](https://www.bov.com/api/v1/download/restricted-and-prohibited-categories)

### Inferences
- Para uma conta Stripe BR (ou PT), "trabalhos espirituais"/tarot/astrologia não constam como proibidos; o risco prático é de enquadramento em "get rich quick"/deceptive practices se a comunicação prometer resultados garantidos, e de revisão de risco (MCC 7277/7299) — isto é inferência, não está escrito na lista.
- Na Adyen, o negócio seria "Restricted" (clairvoyance/horoscopes), implicando aprovação caso a caso — somado ao volume mínimo, torna a Adyen improvável para um MEI.

### Gaps
- Texto completo das listas de Mollie, Checkout.com e PayPal (a AUP do PayPal BR veio truncada e não foi possível verificar cláusulas sobre serviços esotéricos); nada encontrado para Viva, SumUp, Worldline e Unzer.
- Não verifiquei se a SIBS/MB WAY (esquema) impõe restrições de categoria próprias que os PSPs repassem.

---

## Pergunta 6 — Substitutos para uma conta sediada no Brasil: Apple Pay, Google Pay e Multibanco

### Takeaway
Numa conta Stripe Brasil, Apple Pay e Google Pay estão disponíveis (BR aparece nas listas de disponibilidade por país do Stripe) e funcionam como cartão internacional; Multibanco **não** está disponível (lista de 33 business locations sem BR). Nos outros provedores a questão não se coloca porque não há conta brasileira (Mollie, Viva, Worldline, Unzer, Checkout.com/Adyen sem elegibilidade publicada); PayPal BR aceita cartões internacionais mas não MB WAY/Multibanco.

### Cited Findings
- Stripe Multibanco business locations: "Stripe accounts in the following countries can accept Multibanco payments: AT, BE, BG, CH, CY, CZ, DE, DK, EE, ES, FI, FR, GB, GI, GR, HR, HU, IE, IT, LI, LT, LU, LV, MT, NL, NO, PL, PT, RO, SE, SI, SK, US" (33 países; **BR ausente**); "If your business is based in Europe or the United States, you can accept Multibanco payments from customers in Portugal"; customer locations "Portugal"; EUR; sem disputas; mínimo 0,50 EUR, máximo 99.999 EUR — [Stripe Docs: Multibanco](https://docs.stripe.com/payments/multibanco)
- Stripe Apple Pay / Google Pay: na tabela de capabilities, ambos "Available with card_payments"; "Connected account must be in a supported business location" com âncoras #apple-pay-country-availability e #google-pay-country-availability; as duas listas de países publicadas na página incluem "BR" (lista 1: "AE, AT, AU, BE, BG, BR, CA, CH, CY, CZ, DE, DK, EE, ES, FI, FR, GB, GI, GR, HK, HR, HU, IE, IT, JP, LI, LT, LU, LV, MT, MX, NL, NO, NZ, PL, PT, RO, SE, SG, SI, SK, TH, US"; lista 2: "AE, AT, AU, BE, BG, BR, CA, CH, CZ, DE, DK, EE, ES, FI, FR, GB, GI, GR, HK, HR, HU, IE, IT, JP, LI, LT, LU, LV, MX, MY, NL, NO, NZ, PL, PT, RO, SE, SG, SK, TH, US") — [Stripe Docs: Account capabilities](https://docs.stripe.com/connect/account-capabilities)
- Tabela geral: "Apple Pay | Most currencies | Apple-supported locations" e "Google Pay | Most currencies | Google-supported locations" (business e customer locations remetem às listas da Apple/Google) — [Stripe Docs: Payment method support](https://docs.stripe.com/payments/payment-methods/payment-method-support)
- Stripe BR: Pix "1.19%" ("invitation-only") e Boleto "R$ 3.45" são os únicos métodos locais listados além de cartões — [Stripe BR: métodos locais](https://stripe.com/br/pricing/local-payment-methods)
- PayPal BR: tarifa fixa por moeda recebida inclui "0,35 EUR", confirmando recebimento em EUR na conta brasileira; conversão "3,50%" para pagamentos recebidos em outra moeda — [PayPal Brasil: Tarifas](https://www.paypal.com/br/webapps/mpp/merchant-fees)
- Mollie: Apple Pay e Google Pay "Rate defined by card used" (só para contas EEE/UK/CH) — [Mollie Pricing](https://www.mollie.com/pricing)
- SumUp PT lista Apple Pay e Google Pay entre os métodos (conta PT) — [SumUp PT preços](https://www.sumup.com/pt-pt/precos/)

### Inferences
- Para o cliente português, Apple Pay/Google Pay via Stripe BR é o substituto mais próximo em experiência (um toque no telemóvel), mas liquida como cartão internacional (3,99% + R$0,39 + 2%) e expõe o cliente a possível taxa de câmbio do emissor se a cobrança for em EUR (Stripe: "their bank or card issuer might charge the customer a foreign exchange fee" — [Stripe Docs: Supported currencies](https://docs.stripe.com/currencies)).
- Multibanco (referência MB) não é opção para conta BR em nenhum provedor consultado.

### Gaps
- As duas listas de países de Apple Pay/Google Pay na página de capabilities do Stripe não vinham rotuladas no texto extraído; infere-se pela ordem das âncoras que a primeira é Apple Pay e a segunda Google Pay. Ambas incluem BR, pelo que a conclusão não depende do rótulo.
- Não verifiquei se há restrições de Apple Pay/Google Pay para contas PayPal BR.
