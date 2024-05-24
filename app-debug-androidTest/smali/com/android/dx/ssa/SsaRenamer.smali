.class public Lcom/android/dx/ssa/SsaRenamer;
.super Ljava/lang/Object;
.source "SsaRenamer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private nextSsaReg:I

.field private final ropRegCount:I

.field private final ssaMeth:Lcom/android/dx/ssa/SsaMethod;

.field private final ssaRegToLocalItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/rop/code/LocalItem;",
            ">;"
        }
    .end annotation
.end field

.field private ssaRegToRopReg:Lcom/android/dx/util/IntList;

.field private final startsForBlocks:[[Lcom/android/dx/rop/code/RegisterSpec;

.field private threshold:I


# direct methods
.method public constructor <init>(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 3
    .param p1, "ssaMeth"    # Lcom/android/dx/ssa/SsaMethod;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    iput v0, p0, Lcom/android/dx/ssa/SsaRenamer;->ropRegCount:I

    .line 103
    iput-object p1, p0, Lcom/android/dx/ssa/SsaRenamer;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    .line 109
    iput v0, p0, Lcom/android/dx/ssa/SsaRenamer;->nextSsaReg:I

    .line 110
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/dx/ssa/SsaRenamer;->threshold:I

    .line 111
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [[Lcom/android/dx/rop/code/RegisterSpec;

    iput-object v1, p0, Lcom/android/dx/ssa/SsaRenamer;->startsForBlocks:[[Lcom/android/dx/rop/code/RegisterSpec;

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/dx/ssa/SsaRenamer;->ssaRegToLocalItems:Ljava/util/ArrayList;

    .line 131
    new-array v0, v0, [Lcom/android/dx/rop/code/RegisterSpec;

    .line 132
    .local v0, "initialRegMapping":[Lcom/android/dx/rop/code/RegisterSpec;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/dx/ssa/SsaRenamer;->ropRegCount:I

    if-ge v1, v2, :cond_0

    .line 134
    sget-object v2, Lcom/android/dx/rop/type/Type;->VOID:Lcom/android/dx/rop/type/Type;

    invoke-static {v1, v2}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    aput-object v2, v0, v1

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/dx/ssa/SsaRenamer;->startsForBlocks:[[Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getEntryBlockIndex()I

    move-result v2

    aput-object v0, v1, v2

    .line 143
    return-void
.end method

.method public constructor <init>(Lcom/android/dx/ssa/SsaMethod;I)V
    .locals 0
    .param p1, "ssaMeth"    # Lcom/android/dx/ssa/SsaMethod;
    .param p2, "thresh"    # I

    .line 153
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/SsaRenamer;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    .line 154
    iput p2, p0, Lcom/android/dx/ssa/SsaRenamer;->threshold:I

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/ssa/SsaRenamer;)[[Lcom/android/dx/rop/code/RegisterSpec;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/ssa/SsaRenamer;

    .line 61
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer;->startsForBlocks:[[Lcom/android/dx/rop/code/RegisterSpec;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dx/ssa/SsaRenamer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/ssa/SsaRenamer;

    .line 61
    iget v0, p0, Lcom/android/dx/ssa/SsaRenamer;->nextSsaReg:I

    return v0
.end method

.method static synthetic access$108(Lcom/android/dx/ssa/SsaRenamer;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/dx/ssa/SsaRenamer;

    .line 61
    iget v0, p0, Lcom/android/dx/ssa/SsaRenamer;->nextSsaReg:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/dx/ssa/SsaRenamer;->nextSsaReg:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/dx/ssa/SsaRenamer;)Lcom/android/dx/ssa/SsaMethod;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/ssa/SsaRenamer;

    .line 61
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    return-object v0
.end method

.method static synthetic access$300([Lcom/android/dx/rop/code/RegisterSpec;)[Lcom/android/dx/rop/code/RegisterSpec;
    .locals 1
    .param p0, "x0"    # [Lcom/android/dx/rop/code/RegisterSpec;

    .line 61
    invoke-static {p0}, Lcom/android/dx/ssa/SsaRenamer;->dupArray([Lcom/android/dx/rop/code/RegisterSpec;)[Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/dx/ssa/SsaRenamer;Lcom/android/dx/rop/code/RegisterSpec;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dx/ssa/SsaRenamer;
    .param p1, "x1"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 61
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/SsaRenamer;->setNameForSsaReg(Lcom/android/dx/rop/code/RegisterSpec;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/dx/ssa/SsaRenamer;I)Lcom/android/dx/rop/code/LocalItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/ssa/SsaRenamer;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/SsaRenamer;->getLocalForNewReg(I)Lcom/android/dx/rop/code/LocalItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 61
    invoke-static {p0, p1}, Lcom/android/dx/ssa/SsaRenamer;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/dx/ssa/SsaRenamer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/ssa/SsaRenamer;

    .line 61
    iget v0, p0, Lcom/android/dx/ssa/SsaRenamer;->threshold:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/dx/ssa/SsaRenamer;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/ssa/SsaRenamer;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/SsaRenamer;->isBelowThresholdRegister(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/dx/ssa/SsaRenamer;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/ssa/SsaRenamer;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/SsaRenamer;->isVersionZeroRegister(I)Z

    move-result v0

    return v0
.end method

.method private static dupArray([Lcom/android/dx/rop/code/RegisterSpec;)[Lcom/android/dx/rop/code/RegisterSpec;
    .locals 3
    .param p0, "orig"    # [Lcom/android/dx/rop/code/RegisterSpec;

    .line 201
    array-length v0, p0

    new-array v0, v0, [Lcom/android/dx/rop/code/RegisterSpec;

    .line 203
    .local v0, "copy":[Lcom/android/dx/rop/code/RegisterSpec;
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    return-object v0
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 271
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private getLocalForNewReg(I)Lcom/android/dx/rop/code/LocalItem;
    .locals 1
    .param p1, "ssaReg"    # I

    .line 215
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer;->ssaRegToLocalItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer;->ssaRegToLocalItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/code/LocalItem;

    return-object v0

    .line 218
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private isBelowThresholdRegister(I)Z
    .locals 1
    .param p1, "ssaReg"    # I

    .line 248
    iget v0, p0, Lcom/android/dx/ssa/SsaRenamer;->threshold:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isVersionZeroRegister(I)Z
    .locals 1
    .param p1, "ssaReg"    # I

    .line 260
    iget v0, p0, Lcom/android/dx/ssa/SsaRenamer;->ropRegCount:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setNameForSsaReg(Lcom/android/dx/rop/code/RegisterSpec;)V
    .locals 4
    .param p1, "ssaReg"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 228
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 229
    .local v0, "reg":I
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v1

    .line 231
    .local v1, "local":Lcom/android/dx/rop/code/LocalItem;
    iget-object v2, p0, Lcom/android/dx/ssa/SsaRenamer;->ssaRegToLocalItems:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 232
    :goto_0
    iget-object v2, p0, Lcom/android/dx/ssa/SsaRenamer;->ssaRegToLocalItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v0, :cond_0

    .line 233
    iget-object v2, p0, Lcom/android/dx/ssa/SsaRenamer;->ssaRegToLocalItems:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    :cond_0
    iget-object v2, p0, Lcom/android/dx/ssa/SsaRenamer;->ssaRegToLocalItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 237
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    new-instance v1, Lcom/android/dx/ssa/SsaRenamer$1;

    invoke-direct {v1, p0}, Lcom/android/dx/ssa/SsaRenamer$1;-><init>(Lcom/android/dx/ssa/SsaRenamer;)V

    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaMethod;->forEachBlockDepthFirstDom(Lcom/android/dx/ssa/SsaBasicBlock$Visitor;)V

    .line 172
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    iget v1, p0, Lcom/android/dx/ssa/SsaRenamer;->nextSsaReg:I

    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaMethod;->setNewRegCount(I)V

    .line 173
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->onInsnsChanged()V

    .line 192
    return-void
.end method