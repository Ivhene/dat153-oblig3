.class public final Lcom/android/dx/rop/cst/CstCallSite;
.super Lcom/android/dx/rop/cst/CstArray;
.source "CstCallSite.java"


# direct methods
.method private constructor <init>(Lcom/android/dx/rop/cst/CstArray$List;)V
    .locals 0
    .param p1, "list"    # Lcom/android/dx/rop/cst/CstArray$List;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/dx/rop/cst/CstArray;-><init>(Lcom/android/dx/rop/cst/CstArray$List;)V

    .line 63
    return-void
.end method

.method public static make(Lcom/android/dx/rop/cst/CstMethodHandle;Lcom/android/dx/rop/cst/CstNat;Lcom/android/dx/cf/code/BootstrapMethodArgumentsList;)Lcom/android/dx/rop/cst/CstCallSite;
    .locals 4
    .param p0, "bootstrapHandle"    # Lcom/android/dx/rop/cst/CstMethodHandle;
    .param p1, "nat"    # Lcom/android/dx/rop/cst/CstNat;
    .param p2, "optionalArguments"    # Lcom/android/dx/cf/code/BootstrapMethodArgumentsList;

    .line 37
    if-eqz p0, :cond_2

    .line 39
    if-eqz p1, :cond_1

    .line 43
    new-instance v0, Lcom/android/dx/rop/cst/CstArray$List;

    invoke-virtual {p2}, Lcom/android/dx/cf/code/BootstrapMethodArgumentsList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/dx/rop/cst/CstArray$List;-><init>(I)V

    .line 44
    .local v0, "list":Lcom/android/dx/rop/cst/CstArray$List;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/dx/rop/cst/CstArray$List;->set(ILcom/android/dx/rop/cst/Constant;)V

    .line 45
    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstNat;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/dx/rop/cst/CstArray$List;->set(ILcom/android/dx/rop/cst/Constant;)V

    .line 46
    new-instance v1, Lcom/android/dx/rop/cst/CstProtoRef;

    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstNat;->getDescriptor()Lcom/android/dx/rop/cst/CstString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/dx/rop/type/Prototype;->fromDescriptor(Ljava/lang/String;)Lcom/android/dx/rop/type/Prototype;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/dx/rop/cst/CstProtoRef;-><init>(Lcom/android/dx/rop/type/Prototype;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/dx/rop/cst/CstArray$List;->set(ILcom/android/dx/rop/cst/Constant;)V

    .line 47
    if-eqz p2, :cond_0

    .line 48
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/android/dx/cf/code/BootstrapMethodArgumentsList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 49
    add-int/lit8 v2, v1, 0x3

    invoke-virtual {p2, v1}, Lcom/android/dx/cf/code/BootstrapMethodArgumentsList;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/dx/rop/cst/CstArray$List;->set(ILcom/android/dx/rop/cst/Constant;)V

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstArray$List;->setImmutable()V

    .line 53
    new-instance v1, Lcom/android/dx/rop/cst/CstCallSite;

    invoke-direct {v1, v0}, Lcom/android/dx/rop/cst/CstCallSite;-><init>(Lcom/android/dx/rop/cst/CstArray$List;)V

    return-object v1

    .line 40
    .end local v0    # "list":Lcom/android/dx/rop/cst/CstArray$List;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "nat == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bootstrapMethodHandle == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected compareTo0(Lcom/android/dx/rop/cst/Constant;)I
    .locals 2
    .param p1, "other"    # Lcom/android/dx/rop/cst/Constant;

    .line 84
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstCallSite;->getList()Lcom/android/dx/rop/cst/CstArray$List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/cst/CstCallSite;

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstCallSite;->getList()Lcom/android/dx/rop/cst/CstArray$List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dx/rop/cst/CstArray$List;->compareTo(Lcom/android/dx/rop/cst/CstArray$List;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 68
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstCallSite;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstCallSite;->getList()Lcom/android/dx/rop/cst/CstArray$List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/cst/CstCallSite;

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstCallSite;->getList()Lcom/android/dx/rop/cst/CstArray$List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dx/rop/cst/CstArray$List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 71
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstCallSite;->getList()Lcom/android/dx/rop/cst/CstArray$List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstArray$List;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCategory2()Z
    .locals 1

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 4

    .line 108
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstCallSite;->getList()Lcom/android/dx/rop/cst/CstArray$List;

    move-result-object v0

    const-string v1, ", "

    const-string v2, "}"

    const-string v3, "{"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/dx/rop/cst/CstArray$List;->toHuman(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 90
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstCallSite;->getList()Lcom/android/dx/rop/cst/CstArray$List;

    move-result-object v0

    const-string v1, ", "

    const-string v2, "}"

    const-string v3, "call site{"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/dx/rop/cst/CstArray$List;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .locals 1

    .line 96
    const-string v0, "call site"

    return-object v0
.end method
