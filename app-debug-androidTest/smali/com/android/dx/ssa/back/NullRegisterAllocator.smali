.class public Lcom/android/dx/ssa/back/NullRegisterAllocator;
.super Lcom/android/dx/ssa/back/RegisterAllocator;
.source "NullRegisterAllocator.java"


# direct methods
.method public constructor <init>(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/back/InterferenceGraph;)V
    .locals 0
    .param p1, "ssaMeth"    # Lcom/android/dx/ssa/SsaMethod;
    .param p2, "interference"    # Lcom/android/dx/ssa/back/InterferenceGraph;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/dx/ssa/back/RegisterAllocator;-><init>(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/back/InterferenceGraph;)V

    .line 33
    return-void
.end method


# virtual methods
.method public allocateRegisters()Lcom/android/dx/ssa/RegisterMapper;
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/android/dx/ssa/back/NullRegisterAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    .line 47
    .local v0, "oldRegCount":I
    new-instance v1, Lcom/android/dx/ssa/BasicRegisterMapper;

    invoke-direct {v1, v0}, Lcom/android/dx/ssa/BasicRegisterMapper;-><init>(I)V

    .line 49
    .local v1, "mapper":Lcom/android/dx/ssa/BasicRegisterMapper;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 50
    mul-int/lit8 v3, v2, 0x2

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public wantsParamsMovedHigh()Z
    .locals 1

    .line 39
    const/4 v0, 0x0

    return v0
.end method
