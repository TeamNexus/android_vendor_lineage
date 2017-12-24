# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# -----------------------------------------------------------------
# NexusOS OTA update package

NEXUS_TARGET_PACKAGE := $(PRODUCT_OUT)/NexusOS-$(PLATFORM_VERSION)-$(LINEAGE_BUILD)-$(shell date -u +%Y%m%d).zip

CL_BLU := \\033[34m
CL_YLW := \\033[33m
CL_CYN := \\033[36m

.PHONY: nexus
nexus: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(NEXUS_TARGET_PACKAGE)
	$(hide) $(MD5SUM) $(NEXUS_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(NEXUS_TARGET_PACKAGE).md5sum
	@echo -e ""
	@echo -e ""
	@echo -e ${CL_BLU}"  .      .      .      .      .      .      .      .      .      .      . "
	@echo -e ${CL_BLU}" .                               .       .       .       .       .       . "
	@echo -e ${CL_BLU}"    .        .        .        .        .        .        .        .        . "
	@echo -e ${CL_BLU}"      .         .         ."${CL_CYN}"        _......____._        "${CL_BLU}".         . "
	@echo -e ${CL_BLU}"    .          .          ."${CL_CYN}" ..--'\"\" .           \"\"\"\"\"\"---...          "${CL_BLU}". "
	@echo -e ${CL_BLU}"                    "${CL_CYN}"_...--\"\"        ................       \`-.              "${CL_BLU}". "
	@echo -e ${CL_BLU}"                 "${CL_CYN}".-'        ...:'::::;:::%:.::::::_;;:...     \`-. "
	@echo -e ${CL_BLU}"              "${CL_CYN}".-'       ..::::'''''   _...---'\"\"\"\":::+;_::.      \`.      "${CL_BLU}". "
	@echo -e ${CL_BLU}"   ."${CL_CYN}"        .' .    ..::::'      _.-\"\"               :::)::.       \`. "
	@echo -e ${CL_BLU}"          "${CL_CYN}".      ..;:::'     _.-'         .             f::'::    o  _ "
	@echo -e ${CL_BLU}"         "${CL_CYN}"/     .:::%'  .  .-\"                        .-.  ::;;:.   /\" \"x "
	@echo -e ${CL_BLU}"   ."${CL_CYN}"   .'  \"\"::.::'    .-\"     _.--'\"\"\"-.           (   )  ::.::  |_.-' | "
	@echo -e ${CL_BLU}"      "${CL_CYN}".'    ::;:'    .'     .-\" "${CL_YLW}".d@@b."${CL_CYN}"   \    .    . \`-'   ::%::   \_ _/    . "
	@echo -e ${CL_BLU}"     "${CL_CYN}".'    :,::'    /   . _'    "${CL_YLW}"8@@@@8"${CL_CYN}"   j      .-'       :::::      \" o "
	@echo -e ${CL_BLU}"     "${CL_CYN}"| .  :.%:' .  j     (_)    "${CL_YLW}"\`@@@P'"${CL_CYN}"  .'   .-\"         ::.::    .  f "
	@echo -e ${CL_BLU}"     "${CL_CYN}"|    ::::     (        -..____...-'  .-\"          .::::'       / "
	@echo -e ${CL_BLU}" ."${CL_CYN}"   |    \`:\`::    \`.                ..--'        .  .::'::   .    / "
	@echo -e ${CL_BLU}"     "${CL_CYN}"j     \`:::::    \`-._____...---\"\"             .::%:::'       .'  . "
	@echo -e ${CL_BLU}"      "${CL_CYN}"\      ::.:%..             .       .    ...:,::::'       .' "
	@echo -e ${CL_BLU}"  ."${CL_CYN}"    \       \`:::\`:..                ....::::.::::'       .-'          "${CL_BLU}". "
	@echo -e ${CL_BLU}"        "${CL_CYN}"\    .   \`\`:::%::\`::.......:::::%::.::::''       .-' "
	@echo -e ${CL_BLU}"       ."${CL_CYN}" \`.        . \`\`::::::%::::.::;;:::::'''      _.-'          "${CL_BLU}". "
	@echo -e ${CL_BLU}"   ."${CL_CYN}"       \`-..     .    .   \`\`\`\`'''''         . _.-'     "${CL_BLU}".          . "
	@echo -e ${CL_BLU}"          ."${CL_CYN}"    \"\"--...____    .   ______......--' "${CL_BLU}".         .         . "
	@echo -e ${CL_BLU}"   .        .        ."${CL_CYN}"    \"\"\"\"\"\"\"\"     "${CL_BLU}".        .        .        .        . "
	@echo -e ${CL_BLU}"  .       .       .       .       .       .       .       .       . "
	@echo -e ${CL_BLU}"      .      .      .      .      .      .      .      .      .      .      . "
	@echo -e ""
	@echo -e ""
	@echo -e ${CL_CYN}"   Package complete: $(NEXUS_TARGET_PACKAGE)"
	@echo -e ""
	@echo -e ""
