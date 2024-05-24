.class public final Lcom/android/dx/dex/file/CallSiteIdsSection;
.super Lcom/android/dx/dex/file/UniformItemSection;
.source "CallSiteIdsSection.java"


# instance fields
.field private final callSiteIds:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/android/dx/rop/cst/CstCallSiteRef;",
            "Lcom/android/dx/dex/file/CallSiteIdItem;",
            ">;"
        }
    .end annotation
.end field

.field private final callSites:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/android/dx/rop/cst/CstCallSite;",
            "Lcom/android/dx/dex/file/CallSiteItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/file/DexFile;)V
    .locals 2
    .param p1, "dexFile"    # Lcom/android/dx/dex/file/DexFile;

    .line 41
    const-string v0, "call_site_ids"

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/android/dx/dex/file/UniformItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;I)V

    .line 30
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/dx/dex/file/CallSiteIdsSection;->callSiteIds:Ljava/util/TreeMap;

    .line 33
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/dx/dex/file/CallSiteIdsSection;->callSites:Ljava/util/TreeMap;

    .line 42
    return-void
.end method


# virtual methods
.method addCallSiteItem(Lcom/android/dx/rop/cst/CstCallSite;Lcom/android/dx/dex/file/CallSiteItem;)V
    .locals 2
    .param p1, "callSite"    # Lcom/android/dx/rop/cst/CstCallSite;
    .param p2, "callSiteItem"    # Lcom/android/dx/dex/file/CallSiteItem;

    .line 106
    if-eqz p1, :cond_1

    .line 109
    if-eqz p2, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/dx/dex/file/CallSiteIdsSection;->callSites:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callSiteItem == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callSite == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;
    .locals 3
    .param p1, "cst"    # Lcom/android/dx/rop/cst/Constant;

    .line 47
    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/android/dx/dex/file/CallSiteIdsSection;->throwIfNotPrepared()V

    .line 52
    iget-object v0, p0, Lcom/android/dx/dex/file/CallSiteIdsSection;->callSiteIds:Ljava/util/TreeMap;

    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/cst/CstCallSiteRef;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/IndexedItem;

    .line 53
    .local v0, "result":Lcom/android/dx/dex/file/IndexedItem;
    if-eqz v0, :cond_0

    .line 56
    return-object v0

    .line 54
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "not found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    .end local v0    # "result":Lcom/android/dx/dex/file/IndexedItem;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getCallSiteItem(Lcom/android/dx/rop/cst/CstCallSite;)Lcom/android/dx/dex/file/CallSiteItem;
    .locals 2
    .param p1, "callSite"    # Lcom/android/dx/rop/cst/CstCallSite;

    .line 125
    if-eqz p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/dx/dex/file/CallSiteIdsSection;->callSites:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/CallSiteItem;

    return-object v0

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callSite == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized intern(Lcom/android/dx/rop/cst/CstCallSiteRef;)V
    .locals 2
    .param p1, "cstRef"    # Lcom/android/dx/rop/cst/CstCallSiteRef;

    monitor-enter p0

    .line 83
    if-eqz p1, :cond_1

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/CallSiteIdsSection;->throwIfPrepared()V

    .line 89
    iget-object v0, p0, Lcom/android/dx/dex/file/CallSiteIdsSection;->callSiteIds:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/CallSiteIdItem;

    .line 90
    .local v0, "result":Lcom/android/dx/dex/file/CallSiteIdItem;
    if-nez v0, :cond_0

    .line 91
    new-instance v1, Lcom/android/dx/dex/file/CallSiteIdItem;

    invoke-direct {v1, p1}, Lcom/android/dx/dex/file/CallSiteIdItem;-><init>(Lcom/android/dx/rop/cst/CstCallSiteRef;)V

    move-object v0, v1

    .line 92
    iget-object v1, p0, Lcom/android/dx/dex/file/CallSiteIdsSection;->callSiteIds:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local p0    # "this":Lcom/android/dx/dex/file/CallSiteIdsSection;
    :cond_0
    monitor-exit p0

    return-void

    .line 82
    .end local v0    # "result":Lcom/android/dx/dex/file/CallSiteIdItem;
    .end local p1    # "cstRef":Lcom/android/dx/rop/cst/CstCallSiteRef;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 84
    .restart local p1    # "cstRef":Lcom/android/dx/rop/cst/CstCallSiteRef;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cstRef"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .end local p1    # "cstRef":Lcom/android/dx/rop/cst/CstCallSiteRef;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public items()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/dx/dex/file/Item;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/android/dx/dex/file/CallSiteIdsSection;->callSiteIds:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected orderItems()V
    .locals 4

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/dx/dex/file/CallSiteIdsSection;->callSiteIds:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/dex/file/CallSiteIdItem;

    .line 64
    .local v2, "callSiteId":Lcom/android/dx/dex/file/CallSiteIdItem;
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "index":I
    .local v3, "index":I
    invoke-virtual {v2, v0}, Lcom/android/dx/dex/file/CallSiteIdItem;->setIndex(I)V

    .line 65
    .end local v2    # "callSiteId":Lcom/android/dx/dex/file/CallSiteIdItem;
    move v0, v3

    goto :goto_0

    .line 66
    .end local v3    # "index":I
    .restart local v0    # "index":I
    :cond_0
    return-void
.end method
