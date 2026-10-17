# Gateways portugueses de pagamento (MB WAY / Multibanco) para um comerciante residente no Brasil sem vínculos com Portugal

Research date: 2026-10-17. Scenario: merchant is an individual (CPF) or MEI/company (CNPJ) tax-resident in Brazil, with NO Portuguese NIF, address, bank account or registered activity; customers in Portugal pay in EUR. Sources are official pages/terms/FAQs where available; blogs and third-party commentary are labelled as such. Pages older than 2025 are flagged.

Method note: ~50 fetch/search calls. Several official pages failed to load (easypay.pt price list → 404 on three URL variants; meowallet.pt → HTTP 503 twice; hipay.com/pt-pt → 404; sibsgateway.com returned only a "SIBS Backoffice" title; gov.pt NIF page timed out twice; eupago.pt/aderir → 404; BBVA–easypay partner page → 403). These are recorded as gaps rather than filled from memory.

---

## Key Question 1 — Which Portuguese gateways, if any, accept a merchant with no Portuguese NIF / IBAN? (onboarding requirements per gateway, with quotes)

### Takeaway
No Portuguese gateway found publishes a route for a merchant with zero Portuguese/EU footprint. The explicit rules found all require, at minimum, an "atividade aberta na AT" (ifthenpay, easypay) or a national/SEPA bank account (Payshop/CTT: "conta bancária nacional e pertença à área SEPA"). ifthenpay and easypay explicitly reject private individuals without a Portuguese tax-registered activity; ifthenpay's ENI document list requires the Portuguese "Declaração de Início de Atividade". Eupago, Lusopay, SIBS Pay and Reduniq do not publish eligibility criteria online (onboarding is KYC-driven / commercial contact), so they are "unverified" rather than "open".

### Cited Findings

**ifthenpay (Instituição de Pagamento, Banco de Portugal n.º 8707)**
- Who can join (official helpdesk, undated): "Podem aderir ao serviço da IFTHENPAY: Empresas; Empresários em nome individual (ENI); Associações; Fundações; Condomínios ou outras equiparadas a pessoas coletivas; Não aceitamos particulares sem atividade aberta na AT." — [ifthenpay helpdesk – Quem pode aderir?](https://helpdesk.ifthenpay.com/pt-PT/support/solutions/articles/79000086485-quem-pode-aderir-)
- Private individuals: "Se for ENI - Empresário em Nome Individual com atividade aberta na AT pode aderir ao serviço... caso contrário não." — [ifthenpay helpdesk – Sou um particular... posso aderir?](https://helpdesk.ifthenpay.com/pt-PT/support/solutions/articles/79000086514-sou-um-particular-posso-aderir-)
- Documents for ENI: "Documento de identificação (cartão do cidadão ou equivalente)"; "Declaração de Início de Atividade"; proof of residential address (plus tax address if different); proof of the IBAN stated in the contract, with the account holder matching the contract adherent. Documents for companies: "Código de certidão permanente da empresa"; "Documentos de identificação dos representantes legais"; proof of address of legal representatives; proof of IBAN with holder = adherent. — [ifthenpay helpdesk – Que documentos necessito juntar ao contrato de adesão?](https://helpdesk.ifthenpay.com/pt-PT/support/solutions/articles/79000115801-que-documentos-necessito-juntar-ao-contrato-de-adesão-)
- The helpdesk index contains no article on foreign companies, foreign IBANs or companies based outside Portugal. — [ifthenpay helpdesk index](https://helpdesk.ifthenpay.com/)
- Geographic scope statement: "ifthenpay is a payment institution authorized to operate in the countries of the EEA" / "We integrate with all Banks in the SEPA area." — [ifthenpay.com (EN site)](https://ifthenpay.com/CONTRATO-IFTHENPAY-PT.pdf) (the PDF URL redirected to the marketing page; the contract text itself was not retrievable)
- Two onboarding routes: "Adesão Online" (onboarding portal) and "Adesão Manual" (signed contract + "a documentação solicitada"). — [ifthenpay.com/aderir](https://ifthenpay.com/aderir/)
- IBAN change procedure requires a form and, for companies, "a valid permanent certificate number" (Certidão Permanente) — a Portuguese registry document. — [ifthenpay helpdesk – IBAN update (EN)](https://helpdesk.ifthenpay.com/en/support/solutions/articles/79000145921-iban-update)

**easypay (Instituição de Pagamento)**
- Required documents for ENI: "Copy of the ENI Identification Document;" "PEP Declaration;" "Proof of ENI IBAN;" "Valid proof of activity opening – you can get through the Finance Portal, with an issue of less than 6 months". For Lda./Unipessoal: "Permanent Registration Certificate Code (CRP)", "RCBE Code;", "Proof of Company IBAN;", ID of beneficial owners >25% and legal representatives, proof of address <6 months. — [easypay – Required documents (blog)](https://www.easypay.pt/en/blog/required-documents) and [easypay support – Documentos necessários](https://support.easypay.pt/en/knowledge-base/documentos-necess%C3%A1rios)
- The ENI proof is specifically "printed from the Finance Portal's 'Integrated Tax Situation' section, with the 'General Identification Data' and 'Activity Exercised' menus" — i.e., a Portal das Finanças document that only exists for a NIF with atividade aberta. — [easypay support – Documentos necessários](https://support.easypay.pt/en/knowledge-base/documentos-necess%C3%A1rios)
- Foreign companies / non-EU entities: "The page does not mention them." (both easypay documents pages). — same sources as above
- easypay states account approval "é sempre condicionada a uma verificação de compliance, que inclui a análise do site de comércio eletrónico e dos produtos comercializados" (2026 reply on a complaints portal; unofficial venue but written by easypay). — [Portal da Queixa – easypay encerramento de conta](https://portaldaqueixa.com/brands/easypay/complaints/easypay-encerramento-de-conta-153399126)

**Payshop Online Payments (POP) – CTT / Payshop**
- Explicit FAQ on foreign companies: Q: "Tenho uma empresa fora de Portugal. Posso aderir à POP?" A: "Sim, poderá aderir à POP desde que possua uma conta bancária nacional e pertença à área SEPA." — [Payshop – Online Payments](https://www.payshop.pt/solucoes-empresariais/online-payments)
- Sign-up: "Para pedir adesão à POP basta fazer login ou registo no site CTT." / "Caso não tenha ainda uma conta CTT terá de criar uma para este efeito." Activation: "Uma vez recebida a documentação solicitada, o pedido de adesão será analisado no prazo máximo de 48 horas úteis." The page does not list the documents. — [Payshop – Online Payments](https://www.payshop.pt/solucoes-empresariais/online-payments)
- Payshop's general FAQ page contains no POP-adhesion entries. — [Payshop FAQs](https://www.payshop.pt/home/faqs)

**Eupago (Instituição de Pagamento, Banco de Portugal n.º 8709)**
- Home page: "Soluções de pagamento para empresas." Registration via "Criar conta grátis" (/registo). No eligibility criteria published. — [eupago.pt](https://www.eupago.pt/)
- FAQ page: no FAQ on who can create an account, documents, IBAN country or restricted activities; only a generic reference to "documentação necessária" and Know Your Customer rules. — [eupago.pt/faqs](https://www.eupago.pt/faqs)
- Website terms (/legal/termos) are site-use terms only; product conditions are "reguladas em documento próprio" (not published on that page). — [eupago.pt/legal/termos](https://www.eupago.pt/legal/termos)
- BCFT policy ("Política de prevenção de BCFT-V.1-Dez2023"): refusal duty applies when "Não se obtenham os elementos identificados e respetivos meios comprovativos necessários do Comerciante, Representante Legal ou Beneficiário Efetivo" or when "Não seja possível dar cumprimento aos procedimentos de identificação e diligência". No nationality/residence exclusions and no sector list in this document; it defers to a separate "Política de Identificação e Aceitação de Clientes" (not published). — [Eupago – Política de prevenção BCFT (PDF)](https://www.eupago.pt/politica_de_prevencao_BCFT.pdf)
- Eupago's own IP preçário filed with Banco de Portugal (file dated Jan 2026). — [Banco de Portugal – Preçário Eupago 8709](https://clientebancario.bportugal.pt/sites/default/files/precario/8709_/8709_PRE_20260128003707.pdf)

**Lusopay (Instituição de Pagamento, Banco de Portugal n.º 8700)**
- Termos de adesão, C.30: "Podem aderir ao sistema de pagamentos lusopay pessoas singulares maiores de idade ou emancipadas" (clause also covers legal persons / equivalent entities). "The page does not mention residence or head-office requirements, NIF, or an active business activity as eligibility conditions." C.9: services only enabled after "a entrega, por parte do cliente, de toda a documentação legalmente exigida" (documents not listed). G.6: Lusopay verifies data "against public portals and sanctions lists"; on discrepancies services "não serão permitidos." — [Lusopay – Termos de adesão](https://lusopay.com/termos-de-adesao)
- Footer: "Instituição de pagamento portuguesa autorizada a operar em toda a União Europeia." Sign-up is "Aderir grátis" via app.lusopay.com. — [lusopay.com](https://lusopay.com/) and [Lusopay – documentos legais](https://lusopay.com/documentos-legais)
- Third-party (InvoiceXpress FAQ, unverified, undated): "a Lusopay pode enviar o dinheiro para uma conta bancária constituída no espaço SEPA, indicada por si." — [InvoiceXpress FAQ](https://invoicexpress.com/?p=6108)

**SIBS Pay / SIBS Payment Gateway (SIBS Pagamentos, S.A.)**
- Developer docs (Getting started, Section A.1): credentials are "provided during the onboarding process"; production requires "Alignment with a financial partner (e.g., acquirer) for production processing" and "A valid contract must be established with at least one financial partner (e.g., acquirer)"; "The merchant account must be configured and approved for production use". — [SIBS Pay docs – Getting started](https://www.docs.pay.sibs.com/portugal/sibs-gateway/spg-docs-v2-getting-started/)
- MB WAY business page presents the SIBS Payment Gateway as the online route; onboarding is a contact form ("Preencha o formulário para começar a aceitar MB WAY na sua loja!"); no NIF/IBAN/foreign-company rules published. — [mbway.pt – MB WAY Empresas](https://www.mbway.pt/empresas/) and [mbway.pt – adesão empresas](https://www.mbway.pt/adesao-empresas/)
- "Quero aderir" page is a call-back form only ("Por favor introduza o seu contacto e entraremos em contacto consigo brevemente."). — [pay.sibs.com/quero-aderir](https://www.pay.sibs.com/quero-aderir/)
- SIBS publishes a Banco de Portugal preçário (entry into force 2 Jan 2026) but fee figures were not in the extract. — [Banco de Portugal – Preçário SIBS Pagamentos 8703](https://clientebancario.bportugal.pt/sites/default/files/precario/8703_/8703_PRE_0.pdf)

**Reduniq (UNICRE – Instituição Financeira de Crédito)**
- Adhesion form fields: "NIF da Empresa", company name, postal code, address, district, "Faturação Anual Prevista" (brackets from "<400.000€" to ">5.000.000€"). No eligibility statement. — [reduniq.pt/adesao](https://www.reduniq.pt/adesao/)
- The form asks for a Portuguese postal code/district and company NIF — the structure presupposes a Portuguese-registered entity. (Inference; see below.)

**MEO Wallet (Altice Pay / PT Pay)**
- Official site returned HTTP 503 on two attempts (meowallet.pt and /empresas). No 2025–2026 official information on merchant onboarding was found; third-party pages (Selectra, App Store) describe the service without dates. Status for new merchant onboarding: UNVERIFIED. — [Selectra – MEO Wallet (unverified)](https://selectra.pt/tv-net-voz/operadoras/meo/wallet); [App Store listing](https://apps.apple.com/pt/app/meo-wallet/id658323831?ls=1)

**HiPay (Hi-Pay Portugal / HiPay SAS)**
- hipay.com/pt-pt returned 404. The only Portugal-specific official-ish text found: "A HiPay é uma instituição de pagamento autorizada a operar em Portugal pelo Banco de Portugal", payments questions to portugal@hipay.com (HiPay reply on complaints portal). No merchant onboarding criteria found. — [Portal da Queixa – HiPay](https://portaldaqueixa.com/brands/hi-pay-portugal-lda/complaints/hipay-debito-nao-autorizado-via-mb-way-159245126)
- A Ministério Público practical note (2024) confirms HiPay generates Multibanco references for merchants and keeps records per reference. — [MP cibercrime – nota prática Hi-Pay (PDF, 2024)](https://cibercrime.ministeriopublico.pt/sites/default/files/documentos/pdf/2024-06-06_nota_pratica_hi-pay_revista.pdf)

**Multibanco "Pagamento de Serviços" direct (own Entidade) and MB WAY via bank**
- SIBS (in a complaint reply): "Os Pagamentos de Serviços são contratadas por Entidades (estatais, comerciantes, etc.) perante as Instituições Financeiras" and "Existem várias Entidades de Pagamento de Serviços que revendem referências a terceiros, sendo que a SIBS não tem qualquer papel interveniente na validação deste processo." — [Portal da Queixa – SIBS](https://portaldaqueixa.com/brands/sibs/complaints/sibs-entidades-bancarias-147475426)
- Vendus (blog, unverified): merchants "must first contract the service with their bank, and each bank has different requirements"; banks listed include CGD, BPI, Millennium BCP, Novo Banco, Santander Totta, Montepio. — [Vendus blog](https://www.vendus.pt/blog/mbway-pagamentos-telemovel/)
- UNICRE preçário shows "PAGAMENTO DE SERVIÇOS (Tipo de Serviço 29) — 125,00 €" monthly and "Mensalidade aplicada por Entidade", confirming an own-Entidade is a bank/acquirer product. — [UNICRE preçário 15-out-2026 (PDF)](https://www.unicre.pt/media/2026/10/PRECARIO-20261015.pdf)

**Non-Portuguese PSPs that offer MB WAY (outside scope but relevant context)**
- Adyen: "you do not need a contract with Multibanco if you integrate through Adyen". MultiSafepay, PPRO, MONEI, PayPal also list MB WAY. (Their own merchant-country eligibility was not researched here.) — [Adyen docs – MB WAY](https://docs.adyen.com/payment-methods/mb-way.md); [MultiSafepay – MB WAY](https://docs.multisafepay.com/docs/mb-way); [PayPal – MB WAY](https://developer.paypal.com/mbway)

### Inferences
- For ifthenpay and easypay, the ENI route is gated on a Portuguese Portal das Finanças document ("Declaração de Início de Atividade" / "proof of activity opening" from the Finance Portal). A Brazilian CPF/MEI holder cannot produce this without first obtaining a Portuguese NIF and opening atividade at the AT. A CNPJ company cannot produce a "Certidão Permanente"/"CRP" or "RCBE code" because those are Portuguese commercial-registry artefacts; the company route therefore implicitly requires a Portuguese-registered company (or, at best, an EEA company — not stated).
- Payshop/CTT is the only provider that answers the "empresa fora de Portugal" question in writing, and its answer still requires a "conta bancária nacional" (Portuguese bank account) plus SEPA membership — which a Brazil-only merchant does not have.
- Lusopay's terms are the most permissive on paper (any adult natural person), but the clause "toda a documentação legalmente exigida" plus verification against "public portals" (presumably Portuguese registries) makes acceptance of a Brazil-only applicant unverified; expect KYC to ask for NIF and a SEPA IBAN.
- SIBS Gateway and Reduniq are acquirer-contract products aimed at Portuguese-established businesses (Portuguese NIF/address in form; acquirer contract required). Not viable without a Portuguese entity/acquiring relationship.
- Practically, the realistic Portuguese-gateway path for this merchant is: obtain NIF → appoint representante fiscal → open atividade (ENI) → open a SEPA EUR account → apply to ifthenpay/eupago/lusopay/payshop as ENI. Alternatively, use an international PSP that offers MB WAY to merchants in Brazil (not verified in this note).

### Gaps
- No provider publishes an explicit "we accept/refuse non-EU (Brazilian) merchants" statement except Payshop (conditional). Eupago, Lusopay, SIBS, Reduniq, HiPay, MEO Wallet: eligibility by country unconfirmed; requires direct enquiry.
- Whether ifthenpay/eupago/lusopay accept an EEA-based (non-Portuguese) company with a non-Portuguese NIF was not found.
- ifthenpay contract PDF (Portuguese) text with the document checklist "on the last page" could not be retrieved.
- MEO Wallet: official site down; unknown whether it still onboards new merchants.
- HiPay Portugal: no merchant onboarding criteria found; HiPay is generally an enterprise PSP.

---

## Key Question 2 — Is a NIF via representante fiscal enough, and what obligations does it create? (legal/tax side for a Brazilian non-resident)

### Takeaway
A Brazilian can obtain a Portuguese NIF without living in Portugal and (per AT doctrine since 2022) without a fiscal representative at the moment of NIF assignment; but a bare NIF is NOT enough for the gateways that require "atividade aberta". Opening atividade por conta própria as a third-country resident triggers mandatory appointment of a Portugal-resident representante fiscal who, if the activity is subject to IVA, must be an IVA taxable person and becomes jointly liable for IVA; the art. 53 CIVA small-business exemption applies only to taxpayers with "sede ou domicílio em território nacional" (or in another Member State), so a Brazil-domiciled ENI would in principle have to charge Portuguese IVA (23%) and file returns; IRS category B income of a non-resident is taxed at a flat 25% (withholding/liberatória or via estabelecimento estável rules). Specialist advice is needed; several sources are 2019–2022.

### Cited Findings

**Obtaining the NIF as a non-resident**
- AT position (via ECIJA law-firm summary of Ofício-Circulado 90057 of 20 July 2022, which revoked 90054 of 6 June 2022): when registering for a NIF as a non-resident living in a third country, a representative "não é obrigatória", provided the person has no tax domicile in PT/EU/EEA, does not meet PT residence requirements, is not a taxpayer under art. 18(3) LGT, and "Has no obligations to meet and no rights to exercise with the AT." Article dated 18 Aug 2022 (FLAG: pre-2025). — [ECIJA – Representação Fiscal do Não Residente](https://www.ecija.com/adcecija/representacao-fiscal-do-nao-residente/)
- Documents (secondary summaries of AT rules): passport or other accepted ID plus proof of foreign address; if applying through someone else, a power of attorney "with authority to request the NIF" and the agent's ID; in-person at Serviço de Finanças or Loja do Cidadão with prior appointment. (Secondary sources — CRN Contabilidade, Doutor Finanças; the gov.pt page itself timed out.) — [CRN Contabilidade – NIF para estrangeiros (unverified)](https://crncontabilidade.pt/?p=21251); [Doutor Finanças (unverified)](https://www.doutorfinancas.pt/?p=140659)
- Penalty for failing to appoint a required representative (or appointing one without express acceptance): "€ 75,00 a € 7.500,00" (art. 124 RGIT); the non-resident also cannot exercise rights before the AT (art. 19(7) LGT). — [ECIJA](https://www.ecija.com/adcecija/representacao-fiscal-do-nao-residente/)

**When the representante fiscal becomes mandatory — and the self-employment case**
- Official AT page (Portal das Finanças, "Representação"): "Se residir em país terceiro, ou seja, fora da UE, Noruega, Islândia e Liechtenstein" and a tax relationship arises, "no prazo de 15 dias, tem de designar representante fiscal" or "aderir a um dos canais de notificação eletrónica" (DL 44/2022 exemption). BUT: "Esta dispensa não se aplica se exercer uma atividade por conta própria em território português", in which case "o representante tem de ser um sujeito passivo de IVA", and the representative "pode ser solidariamente responsável pelo pagamento do IVA" when the non-resident "exercer uma atividade por conta própria sujeita a IVA". Appointment via Portal das Finanças ("Dados Cadastrais > Representante > Entregar Nomeação"), e-balcão, or in person; requires signed acceptance by a representative with Portuguese tax domicile and a power of attorney. — [Portal das Finanças – Representação](https://info.portaldasfinancas.gov.pt/pt/apoio_ao_contribuinte/Cidadaos/Dados_pessoais_familia/Dados_pessoais/Representacao)
- Ofício-Circulado 90054/2022 (as reproduced by Informador; FLAG: 2022, and ECIJA states it was revoked by 90057/2022 — the substantive rules below are also on the current AT page): a tax relationship exists e.g. when the non-resident "venha a ser proprietário de um veículo e/ou de um imóvel", signs an employment contract in Portugal, or starts an activity por conta própria; "O prazo para a nomeação é de 15 dias", except for self-employment where the appointment must be made "no momento do registo do seu início"; the representative can be any person "com residência em território nacional" and, if the activity is subject to IVA, "terá de ser sujeito passivo de IVA". — [Informador – Ofício-Circulado 90054/2022](https://informador.pt/legislacao/doutrina-administrativa/oficio-circulado-no-90054-2022-de-06-06/)
- Conflicting popular view: Cofidis states representation is mandatory for all third-country residents with any tax relationship (no mention of electronic-notification alternative). — [Cofidis – Representante fiscal (unverified)](https://contasconnosco.cofidis.pt/direitos-e-deveres/representante-fiscal)

**IVA (VAT) consequences of opening atividade as a Brazil-domiciled person**
- Art. 53.º CIVA n.º 1 (current text, post DL 35/2025): "Beneficiam da isenção do imposto os sujeitos passivos com sede ou domicílio em território nacional" with turnover not "superior a 15 000 €"; n.º 2 extends to "sujeitos passivos com sede ou domicílio em outros Estados-Membros" (EU turnover ≤ 100 000 €, prior notification, 'EX' suffix number). "The text does not mention [third countries]." — [Portal das Finanças – artigo 53.º do CIVA](https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/civa_rep/Pages/artigo-53-o-do-civa.aspx)
- AT guidance on the 2025 regime: threshold 15 000 € annual turnover in the previous calendar year; exempt taxpayers lose the right to deduct. — [Ofício-circulado 25062/2025 (PDF)](https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/legislacao/instrucoes_administrativas/Documents/Oficio_circulado_25062_2025.pdf); [OCC summary DL 35/2025 (PDF)](https://occ.pt/sites/default/files/public/2025-03/pequenasA1.pdf)

**IRS (income tax) treatment of category B income of a non-resident**
- OCC technical opinion (21-06-2019, ref. PT22828 — FLAG: 2019, thresholds since changed) on a Brazilian provider "coletado em Portugal no regime simplificado de IRS" and art. 53 exempt: for a non-resident without permanent establishment, "Este tipo de rendimento é tributado por retenção na fonte a título definitivo à taxa liberatória de 25 por cento" (art. 71 CIRS), subject to the Portugal–Brazil tax treaty; the opinion treats a non-resident with início de atividade in category B as having an estabelecimento estável, applying art. 101 CIRS withholding instead, with the art. 101-B dispensa below the IVA threshold. — [OCC – parecer PT22828](https://occ.pt/en/node/11709)
- OCC/Jornal de Negócios: for category B income of non-residents the rate is a flat 25% on net income, no progressive brackets, no personal/family deductions. — [OCC – jnegocios (PDF)](https://occ.pt/fotos/editor2/jnegocios_7set.pdf)
- Non-residents with income attributable to a permanent establishment in Portugal are taxed under art. 72(6)(a) CIRS. — [OCC – parecer PT22828](https://occ.pt/en/node/11709)

### Inferences
- "NIF via representante fiscal" alone gives the Brazilian a Portuguese tax number but does not satisfy ifthenpay/easypay, which require atividade aberta (ENI) and a Portuguese start-of-activity document. The NIF must be followed by a Declaração de Início de Atividade.
- Opening atividade from Brazil is legally possible but creates: (a) mandatory Portugal-resident representante fiscal who must be an IVA sujeito passivo and is jointly liable for IVA (so accountants/firms charge for this risk); (b) likely exclusion from the art. 53 IVA exemption because the merchant's domicile is not in Portugal or another Member State → Portuguese IVA (23%) on services to Portuguese consumers from the first euro, with periodic IVA returns; (c) IRS obligations as non-resident (25% flat on category B income; whether via retenção liberatória or Modelo 3 with estabelecimento estável depends on classification); (d) Portuguese invoicing (recibos/faturas via Portal das Finanças) for every MB WAY receipt; (e) parallel Brazilian tax obligations on the same income (not researched here).
- Whether a non-resident may register the activity as an "estabelecimento estável" in Portugal with no physical presence is unsettled in the sources found; the 2019 OCC opinion treats início de atividade in category B as creating one, which would also change the IVA/IRS mechanics.

### Gaps
- The gov.pt/eportugal NIF-for-non-residents service page could not be loaded; exact official document list and whether a Brazilian can apply at a Portuguese consulate were not confirmed from the primary source.
- No source found that squarely addresses the IVA regime for a self-employed person domiciled in a third country who registers atividade in Portugal (i.e., whether AT accepts the art. 53 exemption or applies art. 30 CIVA representative rules). This needs a Pedido de Informação Vinculativa or a certified accountant.
- Interaction with the Portugal–Brazil double tax convention and Brazilian taxation of the same income (carnê-leão/MEI) were out of scope and not researched.
- Current (2025/2026) cost of a representante fiscal service: not researched from official sources.

---

## Key Question 3 — Do payouts require a Portuguese bank, or any SEPA IBAN (e.g., Wise/Revolut)?

### Takeaway
ifthenpay states in writing that the payout account "pode estar domiciliada em qualquer país da zona SEPA" (free daily transfers, D+1/D+2); Payshop requires a "conta bancária nacional"; Eupago/Lusopay/easypay say only "o seu IBAN"/"conta bancária ... indicada" without a country rule (Lusopay's terms reference SEPA credit transfers). A Wise Business account for a Brazilian CNPJ/MEI is officially available and offers multi-currency holding with account details for a one-time fee (EUR IBAN availability for Brazilian businesses not explicitly confirmed on the official page); Revolut Business is officially NOT available to companies registered outside the EEA/US.

### Cited Findings
- ifthenpay: "A conta bancária pode estar domiciliada em qualquer país da zona SEPA." Payments on day D (until 20:00) "são transferidos no dia útil seguinte (D+1)", reaching the account D+2. "As transferências são efetuadas sem qualquer custo." "São transferidos os valores líquidos, ou seja, valores de pagamentos deduzida a taxa c/IVA." — [ifthenpay helpdesk – periodicidade das transferências](https://helpdesk.ifthenpay.com/pt-PT/support/solutions/articles/79000086515-qual-a-periodicidade-das-transferencias-dos-fundos-)
- ifthenpay: proof of IBAN must show "the bank account holder, who must match the contract's adherent". — [ifthenpay helpdesk – documentos](https://helpdesk.ifthenpay.com/pt-PT/support/solutions/articles/79000115801-que-documentos-necessito-juntar-ao-contrato-de-adesão-)
- Payshop POP: foreign company may join "desde que possua uma conta bancária nacional e pertença à área SEPA"; transfers "até ao dia útil seguinte, a contar do dia da ordem de transferência." — [Payshop – Online Payments](https://www.payshop.pt/solucoes-empresariais/online-payments)
- Eupago: "Recebe o valor das suas transações através de transferências diárias para o seu IBAN." "O montante é enviado até ao 1.º dia útil seguinte após o pagamento." "Em situações excecionais, poderá ocorrer até ao 2.º dia útil seguinte." No IBAN-country restriction stated. — [eupago.pt/faqs](https://www.eupago.pt/faqs); also "Os valores são transferidos para o IBAN associado à conta Eupago" — [eupago.pt](https://www.eupago.pt/)
- Lusopay terms: transfers to the "conta bancária previamente indicada pelo beneficiário do pagamento"; mentions "transferências a crédito SEPA" (cut-off context). Timing: Multibanco paid before 20:00 → funds generally next business day; MB WAY → two business days; cards up to three business days. No IBAN-country rule. — [Lusopay – Termos de adesão](https://lusopay.com/termos-de-adesao)
- easypay: requires "Proof of ENI IBAN"/"Proof of Company IBAN"; "The country of the IBAN is not specified." — [easypay support – Documentos necessários](https://support.easypay.pt/en/knowledge-base/documentos-necess%C3%A1rios)
- Wise Business for Brazilian companies (official help page): business must be active with a valid CNPJ; accepted types include "Empresário Individual, including MEI (Micro Empresa Individual)" and Ltda; "There can only be 1 owner that owns 100% of the company" at opening; can "hold money in 40+ currencies, convert between the currencies and send from these accounts"; to receive via account details a one-time setup fee applies and "The fee can only be paid via Pix"; "You currently won't be able to:" receive BRL or send batch payments. The page does not explicitly confirm EUR account details (IBAN) for Brazilian businesses. — [Wise – Opening a Wise account for your Brazilian business](https://wise.com/help/articles/7hdqRgpo7Otr84XRtMBdqv/opening-a-wise-account-for-your-brazilian-business)
- Wise EUR account details are issued in the name of Wise Europe SA (Belgium), i.e., a BE IBAN inside SEPA; "cada cliente possui um IBAN particular". — [Wise – Dados de conta da Wise](https://wise.com/pt/help/articles/2932124/dados-de-conta-da-wise)
- Revolut Business (official help): "the company must be registered and able to prove its physical presence in either the EEA or the United States"; Brazil appears only as an eligible country of residence for owners of US-registered companies. — [Revolut Business help – eligible country](https://help.revolut.com/en-IE/business/help/setting-up-an-account/is-my-business-eligible/what-country-of-residence-is-eligible-to-open-a-revolut-business-account)

### Inferences
- For ifthenpay, a Wise Business EUR (BE) IBAN in the exact name of the ENI/company would satisfy the written SEPA rule, provided the account-holder name matches the contract adherent. A personal Wise account in the individual's name would match an ENI (same natural person) but not a company.
- For Payshop, Wise/Revolut do not satisfy "conta bancária nacional" (Portuguese IBAN "PT50"); a Portuguese bank account is needed.
- For Eupago/Lusopay/easypay, a SEPA IBAN is probably acceptable in practice (no stated restriction), but this is unverified and subject to KYC discretion.
- Revolut Business is not an option for a Brazil-registered company; a Brazilian individual could open a personal Revolut account (Revolut Brasil), but that is a BRL-centric local product and was not verified to provide a SEPA EUR IBAN.

### Gaps
- Whether Wise Business currently issues EUR account details (IBAN) to Brazilian CNPJ accounts was not confirmed on the official page (third-party guides say yes; treat as unverified).
- Eupago/Lusopay/easypay written policy on non-Portuguese SEPA IBANs not found.
- Whether any gateway accepts a payout IBAN whose holder name is a Brazilian company with no Portuguese NIF (name-matching to a Portuguese-registered adherent would fail) — unanswered because no gateway onboards such an adherent in the first place.

---

## Key Question 4 — Exact fee tables (MB WAY, Multibanco, cards; setup/monthly)

### Takeaway
Online fees are tightly clustered: MB WAY ≈ 0,06–0,07 € + 0,69–0,70 %; Multibanco reference ≈ 0,19–0,25 € + 1,49–1,5 %; EEA consumer cards ≈ 0,19–0,20 € + 1,49–1,5 % (+≈1 % non-EEA/business cards); no setup or monthly fee at ifthenpay, eupago, lusopay, payshop. All figures exclude IVA (23%). Reduniq (acquirer) is a different model: 0,90 % + 0,35 € MB WAY, 2,25 % + 0,35 € EEA consumer cards, 19 €/month e-commerce + 5 €/month MB WAY, 75 €/quarter minimum. easypay's official price list could not be loaded.

### Cited Findings
- ifthenpay (online, "Preçário", EN site; "VAT at the legal rate in force applies"; "No monthly fees, minimum transactions, lock-in periods or exclusivity contracts"; "Membership Fees 0 €"; "Unpaid References 0 €"): MB WAY 0,07 € + 0,7 %; Multibanco 0,20 € + 1,5 %; Payshop 0,57 €; Credit card (Visa/Mastercard, consumer, EEA) 0,20 € + 1,5 %; Direct debits 0,45 €; Google Pay / Apple Pay 0,20 € + 1,5 %; Pix 0,20 € + 3,5 % ("Real/Euro exchange costs included"). TPA: 0,7 % + 12 €/month rental. — [ifthenpay – preçário](https://ifthenpay.com/precario/)
- Eupago (web price list; "A todos os valores indicados acresce IVA"; "Sem mensalidade"): Multibanco 0,20 € + 1,5 %; MB WAY 0,07 € + 0,7 %; Cartão de Crédito (Visa/Mastercard) 0,20 € + 1,5 %; Google Pay / Apple Pay 0,20 € + 1,5 %; Bizum 0,79 % + 0,19 € (0,59 % + 0,15 € until 31 Dec 2026); Payshop 0,60 €; EuroPix 0,15 € + 1,8 % ("Valor promocional para adesões até final de 2025"); Paysafecard 12 %; Débitos Diretos 0,45 €; Pagaqui 0,30 €; FLOA "Sob consulta". Cards/Google Pay/Apple Pay: +1 % for cards issued outside the EEA and +1 % for corporate cards. No setup fee stated. — [eupago.pt/precario](https://www.eupago.pt/precario)
- Lusopay ("Lojas online", + IVA): MB WAY 0,07 € + 0,70 %; Referência Multibanco 0,25 € + 1,5 %; Referência Payshop 0,57 €; Débitos diretos 0,45 €; Cartão consumidor 0,20 € + 1,50 %; cartão empresa +1,3 %; cartão fora do EEE +1,1 %. "Custos de adesão: 0€"; "Referências não pagas: 0€"; "Geração de referências para pagamento: 0€". TPA: 0,05 € + 0,89 % + 9,90 €/month. Official maximum prices in the Banco de Portugal preçário. — [Lusopay – preçário](https://lusopay.com/precario); [Banco de Portugal – Preçário Lusopay 8700](https://clientebancario.bportugal.pt/sites/default/files/precario/8700_/8700_PRE.pdf)
- Payshop POP ("Aos valores apresentados acresce IVA À taxa legal em vigor"; "Na POP paga apenas pelas transações efetivamente concluídas", no minimums/monthly fees): MB WAY "0,06€ + 0,69% do valor da transação"; Referência Multibanco "0,19€ + 1,49% do valor da transação"; Cartões débito/crédito e Google Pay "0,19€ + 1,49%" ("tarifa para cartões particulares europeus"; "No caso de cartões não-europeus ou cartões empresariais acresce 1%"); Referência Payshop "0,19€+1,19% do valor da transação (máximo 0,56€)". — [Payshop – Online Payments](https://www.payshop.pt/solucoes-empresariais/online-payments)
- Reduniq / UNICRE preçário, entry into force 15-out-2026 ("Prestação de serviços / Outros Clientes"): TSC Reduniq E-Commerce — EEA consumer cards 2,25 % + 0,35 €; EEA business cards 2,75 % + 0,35 €; non-EEA consumer 3,20 % + 0,35 € (Premium 3,75 % + 0,35 €); MB Way "Todos os cartões 0,90%+0,35€"; PIX 1,50 %. Monthly: "6. REDUNIQ E-COMMERCE (Tipo de Serviço S / Pacote 8) — 19,00 € (IVA 23%)" ("Mensalidade aplicada por loja virtual"); "8. MB WAY — 5,00 €"; "PAGAMENTO DE SERVIÇOS (Tipo de Serviço 29) — 125,00 €". Minimum revenue: "Montante Mínimo de TSC Por trimestre — 75,00 €". Multibanco Pagamento de Serviços (flexible tariff): variable 0,80 % (min 0,05 € / max 0,60 €) + fixed 0,17 € (no real time) / 0,21 € (real time); single tariff 1,00 € per transaction. Optional "Reduniq E-Commerce - Módulo Gestão do Risco" adhesion 7 500 €. — [UNICRE preçário 15-out-2026 (PDF)](https://www.unicre.pt/media/2026/10/PRECARIO-20261015.pdf)
- easypay: official price pages returned 404 (/pt/precario, /pt/precos, /en/pricing). Search snippet from BBVA partner page (not dated, unverified, page itself returned 403): MB WAY and Multibanco "€0.25 + 1.5%", no subscription or monthly fees. — [BBVA – easypay partner page (unverified)](https://www.bbva.pt/en/empresas/servicos/e-commerce/easypay.html)
- SIBS Pay / SIBS Gateway: no public fee figures found; pricing via "Conheça as condições comerciais" / contact form. The Banco de Portugal preçário (effective 2 Jan 2026) exists but figures were not extracted. — [pay.sibs.com](https://www.pay.sibs.com/); [BdP – preçário SIBS 8703](https://clientebancario.bportugal.pt/sites/default/files/precario/8703_/8703_PRE_0.pdf)
- MB WAY on a MULTIBANCO terminal (physical): "Não tem custos adicionais e facilita a compra aos seus clientes." — [mbway.pt – empresas](https://www.mbway.pt/empresas/)

### Inferences
- For a low-volume services merchant, the PSP route (ifthenpay/eupago/lusopay/payshop) costs ~0,75 % + 0,07 € per MB WAY payment with zero fixed costs — far cheaper than an acquirer/gateway contract (Reduniq: 24 €/month + 75 €/quarter minimum).
- Pix acceptance in EUR (ifthenpay 3,5 %, eupago EuroPix 1,8 %, Reduniq 1,5 %) is irrelevant for Portuguese customers but shows these PSPs treat Brazil as a customer market, not a merchant market.

### Gaps
- easypay official 2026 fee table not retrieved.
- SIBS Payment Gateway monthly/transaction fees not retrieved.
- HiPay and MEO Wallet fees not found.
- Exact fee conditions in the Banco de Portugal "Folheto de Comissões" PDFs (maximum fees) for ifthenpay/eupago/lusopay were not opened.

---

## Key Question 5 — Technical integration for a custom website (API, plugins)

### Takeaway
All PSPs offer REST APIs plus plugins for WooCommerce/PrestaShop/Magento; SIBS Gateway offers server-to-server, hosted form and plugins but production keys only after an acquirer contract. ifthenpay MB WAY plugins require an existing contract and an "MB WAY key" issued by ifthenpay.

### Cited Findings
- ifthenpay: official WooCommerce/FluentCart plugins "exigem um vínculo prévio com a empresa" ("é preciso ter um contrato com a IfthenPay"); MB WAY is activated with data supplied by ifthenpay ("chave MB WAY"). — [WordPress.org – Multibanco, MB WAY ... ifthenpay for WooCommerce](https://pt.wordpress.org/plugins/multibanco-ifthen-software-gateway-for-woocommerce/); [FluentCart plugin](https://br.wordpress.org/plugins/?p=258654)
- Eupago: "API Eupago" ("Gateway de pagamentos por API"), "Plugin oficial certificado" (PrestaShop); FAQ: "Algumas integrações usam plugins ou configurações simples." / "Projetos com API ou software próprio podem exigir apoio técnico." — [eupago.pt](https://www.eupago.pt/)
- Lusopay: "Integre os nossos serviços via API de forma simples e segura"; plugins for WooCommerce, PrestaShop, Magento, OpenCart, Zen Cart; docs at /documentacao; dev support dev@lusopay.com. — [lusopay.com](https://lusopay.com/)
- Payshop POP: plugins for CTT online store platform, Shopkit, WooCommerce, PrestaShop, Magento; REST API for custom integrations. — [Payshop – Online Payments](https://www.payshop.pt/solucoes-empresariais/online-payments)
- SIBS Gateway: "Integração Standard (Payment Form)", "Integração Personalizada (Server-to-Server)", plugins (Magento, WooCommerce, PrestaShop); methods: one-off MB WAY/credit card/Multibanco reference, recurring MB WAY authorized payments, two-step payments; docs at docs.pay.sibs.com/portugal and /international. — [SIBS Pay docs – Getting started](https://www.docs.pay.sibs.com/portugal/sibs-gateway/spg-docs-v2-getting-started/); [pay.sibs.com](https://www.pay.sibs.com/)
- easypay: merchant "needs only to generate a payment request via API or the easypay Backoffice", customer approves on phone within 5 minutes; PrestaShop plugin documented. — [easypay – MB WAY](https://www.easypay.pt/en/payment-methods/mb-way); [easypay support – plugin PrestaShop](https://support.easypay.pt/en/knowledge-base/plugin-easypay-para-prestashop)
- MB WAY limits (third-party PSP docs): minimum €1 (Monext) / €0.01 (MultiSafepay), maximum €5 000 per transaction; approval timeout ~4–5 minutes. — [Monext – Multibanco terms](https://docs.monext.fr/x/UxRuO); [MultiSafepay – MB WAY](https://docs.multisafepay.com/docs/mb-way)

### Inferences
- Integration is not the bottleneck; onboarding is. Any of the PSP APIs can be wired to a custom site in a day once a merchant account exists.

### Gaps
- No API docs were read in depth (sandbox availability, webhook/callback specifics) — out of scope.

---

## Key Question 6 — Category restrictions relevant to spiritual services, tarot, consultations

### Takeaway
No Portuguese gateway found publishes a list of prohibited/high-risk merchant categories, and none of the retrieved documents mention esoterismo, tarot, astrologia or spiritual services. Acceptance is discretionary under KYC/AML ("Dever de Recusa", "verificação de compliance ... do site ... e dos produtos comercializados"). Treat the category as unconfirmed — it must be disclosed and cleared at onboarding.

### Cited Findings
- Eupago BCFT policy: refusal occurs when identification/KYC elements, or "Informação sobre a natureza, objeto e finalidade da relação de negócio", cannot be obtained; the sector-level acceptance rules are in a separate, unpublished "Política de Identificação e Aceitação de Clientes". No mention of esoteric services. — [Eupago – Política BCFT (PDF, Dec 2023)](https://www.eupago.pt/politica_de_prevencao_BCFT.pdf)
- easypay (2026 reply): approval "é sempre condicionada a uma verificação de compliance, que inclui a análise do site de comércio eletrónico e dos produtos comercializados" and accounts can be closed for "desconformidades graves" with acceptance rules. — [Portal da Queixa – easypay](https://portaldaqueixa.com/brands/easypay/complaints/easypay-encerramento-de-conta-153399126)
- Lusopay terms: "The page contains no references to esoterismo, tarot, astrologia, adult content, or gambling, and no list of prohibited or restricted business activities." — [Lusopay – Termos de adesão](https://lusopay.com/termos-de-adesao)
- ifthenpay helpdesk index: no article on prohibited activities; Code of Conduct and BCFT policy PDFs linked but not retrievable. — [ifthenpay helpdesk](https://helpdesk.ifthenpay.com/)
- Search for "ifthenpay OR eupago OR easypay atividades não permitidas esoterismo astrologia vidência" returned no relevant official text. — [search result summary; no source]

### Inferences
- Card schemes/acquirers commonly treat "psychic/astrology services" as a high-risk MCC, which could surface at the card-acquiring layer (Reduniq/SIBS) even if MB WAY/Multibanco themselves have no such list; this is general industry knowledge and was not confirmed in any Portuguese source retrieved — flag as unverified.

### Gaps
- No Portuguese PSP acceptance-policy document listing restricted sectors was found. Written confirmation from each PSP's compliance team is the only way to settle this.

---

## Overall assessment for the report writer (synthesis of the above)

- Today, with zero Portuguese ties, none of the Portuguese gateways researched can be onboarded on the strength of published criteria: ifthenpay and easypay explicitly require atividade aberta na AT / Portuguese registry documents; Payshop requires a Portuguese bank account; SIBS Gateway and Reduniq require an acquiring contract and a Portuguese NIF/address in their forms; Eupago and Lusopay publish no country rule (unverified, KYC-dependent); MEO Wallet and HiPay could not be verified.
- The documented path to legality is NIF → representante fiscal (mandatory on opening atividade; must be IVA sujeito passivo; jointly liable for IVA) → Declaração de Início de Atividade (ENI, categoria B) → SEPA EUR account (Portuguese bank for Payshop; any SEPA IBAN such as Wise Business BE IBAN for ifthenpay) → PSP onboarding. Consequences: probable Portuguese IVA at 23% from the first euro (art. 53 exemption limited to PT/EU-domiciled taxpayers), 25% flat IRS on category B income as non-resident, Portuguese invoicing, plus Brazilian taxation — all requiring professional advice; several key sources are 2019–2022 doctrine.
- Cheapest viable fee structure once onboarded: ~0,07 € + 0,7 % per MB WAY payment, 0 setup/monthly (ifthenpay/eupago/lusopay; Payshop 0,06 € + 0,69 %).
