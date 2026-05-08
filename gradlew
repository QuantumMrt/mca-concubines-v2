package com.example.mcaconcubines.attachment;

import com.example.mcaconcubines.McaConcubinesMod;
import net.neoforged.bus.api.IEventBus;
import net.neoforged.neoforge.attachment.AttachmentType;
import net.neoforged.neoforge.registries.DeferredRegister;
import net.neoforged.neoforge.registries.NeoForgeRegistries;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.npc.AbstractVillager;

public class ModAttachments {

    public static final DeferredRegister<AttachmentType<?>> ATTACHMENT_TYPES =
            DeferredRegister.create(NeoForgeRegistries.ATTACHMENT_TYPES, McaConcubinesMod.MOD_ID);

    public static final net.neoforged.neoforge.registries.DeferredHolder<AttachmentType<?>, AttachmentType<PlayerConcubineData>> PLAYER_CONCUBINE_DATA =
            ATTACHMENT_TYPES.register("player_concubine_data", () ->
                    AttachmentType.serializable(PlayerConcubineData::new)
                            .build());

    public static final net.neoforged.neoforge.registries.DeferredHolder<AttachmentType<?>, AttachmentType<VillagerConcubineData>> VILLAGER_CONCUBINE_DATA =
            ATTACHMENT_TYPES.register("villager_concubine_data", () ->
                    AttachmentType.serializable(VillagerConcubineData::new)
                            .build());

    public static void register(IEventBus modEventBus) {
        ATTACHMENT_TYPES.register(modEventBus);
    }

    public static PlayerConcubineData getPlayerConcubineData(Player player) {
        return player.getData(ModAttachments.PLAYER_CONCUBINE_DATA);
    }

    public static VillagerConcubineData getVillagerConcubineData(AbstractVillager villager) {
        return villager.getData(ModAttachments.VILLAGER_CONCUBINE_DATA);
    }
}
