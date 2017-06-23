According to procedure description: https://pjones.fedorapeople.org/shim-signing-procedure.html.

1. What's your organization?
FileWave. Company website is located here: https://www.filewave.com/.

What's the product?
FileWave provides software that helps system administrators with imaging their machines (restore machine to given state by restoring a disk image). The solution consists of a server that is used by machines to boot from the network. Submitted binary (SHIM) allows us to provide the same functionality of our software in the environments where Secure Boot is enabled.

Does it really need to be signed for the whole world to be able to boot it?
Yes. Our product is used by thousands of customers all over the world. It's crucial for us to be able to provide software that works with every machine that ships with Windows sticker and Secure Boot enabled.

2. Security contacts
Name: Marcin Wcislo
Position: Software Engineer, working on extending our product to be able to work with Secure Boot enabled machines.
E-mail: marcin.wcislo@filewave.com
PGP key: see attached D75A2498.asc

Name: Juan Ángel García Pardo
Position: Software Engineer, working on extending our product to be able to work with Secure Boot enabled machines.
E-mail: juan.garcia-pardo@filewave.com
PGP key: see attached 6083D0DF.asc

Unfortunately we don't know any reasonably known individuals in the Linux community.

3. Shim prepared in the form required by Microsoft - CAB archive signed with FileWave's EV certificate, archive consists of single file which is shimx64.efi (build using steps from point 6). Public key certficate of our EV certificate and trust anchor are attached (filewave_ev_chain.p7b).

4. Submitted shim is just stock version of shim 12 downloaded from here: https://github.com/rhboot/shim/releases/tag/12 (to be exact from here: https://github.com/rhinstaller/shim/archive/12.tar.gz).

5. No patches have been applied.

6. Build was done on CentOS 7.3.1611. Build can reproduced using attached script (build_shim.sh, public key certificate embedded into shim: filewave_secure_boot_public_der.crt).
Specific versions for dependencies:
gcc (4.8.5)
binutils (2.25.1)
gnu-efi (3.0.2)
gnu-efi-devel (3.0.2)
Packages are downloaded and installed from standard CentOS repositories using yum package manager.

7. Build logs are attached (build_shim.log). To be crystal clear, I don't have build logs for building shimx64.efi that has been sent to Microsoft (simply because at that time we weren't aware of SHIM Review Board and its requiremenets). These build logs have been captured later.
