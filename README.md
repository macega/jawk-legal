# jawk-URL-Meta

Páginas legais do aplicativo JAWK para atender aos requisitos da **Meta (Facebook/Instagram)**.

## 📄 Páginas

| Rota | Descrição |
|---|---|
| `/` | Página inicial com links |
| `/privacidade.html` | Política de Privacidade |
| `/termos.html` | Termos de Serviço |

## 🚀 Deploy

### 1. Build da imagem Docker

```bash
docker build -t jawk-legal:latest .
```

### 2. Teste local

```bash
docker run -p 8095:80 jawk-legal:latest
# Acesse: http://localhost:8095
```

### 3. Deploy via Portainer

1. Faça o build e envie para seu registry (ou use image local via Portainer)
2. No Portainer → **Stacks** → **Add Stack**
3. Cole o conteúdo do `docker-compose.yml`
4. Deploy!

### 4. Configuração do DNS

Aponte o domínio `legal.jawk.com.br` para o IP do seu servidor Proxmox/Portainer.

Se estiver usando **Traefik** como reverse proxy, o SSL será gerado automaticamente pelo Let's Encrypt.

## 🔗 URLs para a Meta

Após o deploy, use estas URLs no painel do desenvolvedor Meta:
- **Política de Privacidade:** `https://legal.jawk.com.br/privacidade.html`
- **Termos de Serviço:** `https://legal.jawk.com.br/termos.html`
