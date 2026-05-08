package com.example.mcaconcubines.item;

import com.example.mcaconcubines.McaConcubinesMod;
import net.minecraft.world.item.Item;
import net.neoforged.bus.api.IEventBus;
import net.neoforged.neoforge.registries.DeferredItem;
import net.neoforged.neoforge.registries.DeferredRegister;

public class ModItems {

    public static final DeferredRegister.Items ITEMS = DeferredRegister.createItems(McaConcubinesMod.MOD_ID);

    public static final DeferredItem<Item> EMERALD_RING = ITEMS.register("emerald_ring",
            () -> new EmeraldRingItem(new Item.Properties()));

    public static void register(IEventBus modEventBus) {
        ITEMS.register(modEventBus);
    }
}
