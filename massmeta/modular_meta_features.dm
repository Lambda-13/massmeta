/*
 * Это основной файл куда будут складываться все наши НОВЫЕ модульные добавления.
 *
 * Добавлять только: модули (.dm файлами)
 *
 * Сам этот файл добавлен в tgstation.dme
 *
 * Все Defines файлы лежат в папке "~meta_defines\"
 *
 * Все файлы должны быть в алфавитном порядке
 */


//master files (unsorted, TODO: need modularization)

#include "code\modules\clothing\clothing.dm"
#include "code\modules\surgery\organs\tongue.dm"
#include "code\modules\clothing\suits\chaplainsuits.dm"
#include "code\modules\admin\verbs\adminhelp.dm"
#include "code\modules\mob\living\carbon\human\emote.dm"
#include "code\modules\antags\heretic\items\heretic_armor.dm"
#include "code\obj\items\clothing\gloves.dm"
#include "code\obj\items\clothing\masks.dm"
#include "code\datums\components\crafting\makeshift.dm"
#include "code\game\objects\items\devices\radio\radio.dm"
#include "code\game\objects\items\storage\belt.dm"
#include "code\game\objects\items\tools\crowbar.dm"
#include "code\game\objects\items\tools\kitchen.dm"
#include "code\game\objects\items\tools\multitool.dm"
#include "code\game\objects\items\tools\screwdriver.dm"
#include "code\game\objects\items\tools\weldingtool.dm"
#include "code\game\objects\items\tools\wirecutters.dm"
#include "code\game\objects\items\tools\wrench.dm"
#include "code\obj\items\storage\boxes\clothes_boxes.dm"
#include "code\obj\structures\display_case.dm"
#include "code\modules\antags\uplink_items.dm"
#include "code\obj\items\clothing\belt.dm"
#include "code\modules\announcers.dm"
#include "code\modules\reagents\chemistry\reagents\nitrium.dm"
#include "code\modules\mob\living\simple_animal\hostile\megafauna\colossus.dm"
#include "code\datums\components\crafting\weapon_ammo.dm"
#include "code\modules\ammunition\ballistic\shotgun.dm"
#include "code\modules\projectiles\projectile\bullets\shotgun.dm"
#include "code\modules\vending\wardrobes.dm"
#include "code\modules\clothing\head\jobs.dm"
#include "code\modules\clothing\suits\armor.dm"
#include "code\modules\clothing\suits\labcoat.dm"
#include "code\modules\clothing\suits\wintercoats.dm"
#include "code\modules\clothing\under\jobs\rnd.dm"
#include "code\modules\clothing\under\jobs\civilian.dm"
#include "code\modules\clothing\under\jobs\medical.dm"
#include "code\modules\jobs\job_types\medical_doctor.dm"
#include "code\modules\jobs\job_types\research_director.dm"
#include "code\modules\jobs\job_types\chief_medical_officer.dm"
#include "code\modules\jobs\job_types\head_of_personnel.dm"
#include "game\objects\items\storage\garment.dm"
#include "code\modules\map_vote.dm"

//buts
#include "code\modules\surgery\organs\internal\butts\butts.dm"
#include "code\modules\surgery\organs\internal\butts\butts_init.dm"
