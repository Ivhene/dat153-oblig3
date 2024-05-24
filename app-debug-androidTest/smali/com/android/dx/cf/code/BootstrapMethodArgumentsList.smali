.class public Lcom/android/dx/cf/code/BootstrapMethodArgumentsList;
.super Lcom/android/dx/util/FixedSizeList;
.source "BootstrapMethodArgumentsList.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "count"    # I

    .line 40
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    .line 41
    return-void
.end method


# virtual methods
.method public get(I)Lcom/android/dx/rop/cst/Constant;
    .locals 1
    .param p1, "n"    # I

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/dx/cf/code/BootstrapMethodArgumentsList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/cst/Constant;

    return-object v0
.end method

.method public set(ILcom/android/dx/rop/cst/Constant;)V
    .locals 4
    .param p1, "n"    # I
    .param p2, "cst"    # Lcom/android/dx/rop/cst/Constant;

    .line 61
    instance-of v0, p2, Lcom/android/dx/rop/cst/CstString;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/android/dx/rop/cst/CstType;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/android/dx/rop/cst/CstInteger;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/android/dx/rop/cst/CstLong;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/android/dx/rop/cst/CstFloat;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/android/dx/rop/cst/CstDouble;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/android/dx/rop/cst/CstMethodHandle;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/android/dx/rop/cst/CstProtoRef;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 72
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad type for bootstrap argument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    .end local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/cf/code/BootstrapMethodArgumentsList;->set0(ILjava/lang/Object;)V

    .line 74
    return-void
.end method
