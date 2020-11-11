# Mailserver Suite for CentOS 7 Minimal Install on VPS
## Concept:
* Self-Owned/Controlled eMail For Small Business

| Purpose | Current Solution | Replacement Solution | Reasoning |
| :-- | :-- | :-- | :-- |
| SMTP w/STARTTLS | GMail | Postfix | Full control of your own email, won't be deleted without your permission, added security |
| IMAP/POP3 | GMail | Dovecot |  |
| Web Based Mail | GMail | Roundcube | Full featured web based email that integrates with mail system |
| Spam Protection | GMail | Spamassassin |  |
| Virus Protection | GMail  | ClamAV |  |  |
| Mailing Lists | MailChimp/Constant Contact  | Mailman |  |

## Problems with Third Party, Proprietary Software
* It's a service that the business owner has no control over
* It could be cancelled at any time, for any reason.
* It spies on your communications with your customers and vendors.
* It provides NO Privacy or Secrecy of your confidential emails
* Your messages are simply one warrant away from release to Government or other Official sources.
* You have NO control over the software as it's proprietary.
* YOU control the secure certificate that controls the security of your email/webserver.
