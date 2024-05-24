.class public abstract Lcom/android/dx/rop/cst/CstMemberRef;
.super Lcom/android/dx/rop/cst/TypedConstant;
.source "CstMemberRef.java"


# instance fields
.field private final definingClass:Lcom/android/dx/rop/cst/CstType;

.field private final nat:Lcom/android/dx/rop/cst/CstNat;


# direct methods
.method constructor <init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V
    .locals 2
    .param p1, "definingClass"    # Lcom/android/dx/rop/cst/CstType;
    .param p2, "nat"    # Lcom/android/dx/rop/cst/CstNat;

    .line 35
    invoke-direct {p0}, Lcom/android/dx/rop/cst/TypedConstant;-><init>()V

    .line 36
    if-eqz p1, :cond_1

    .line 40
    if-eqz p2, :cond_0

    .line 44
    iput-object p1, p0, Lcom/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/android/dx/rop/cst/CstType;

    .line 45
    iput-object p2, p0, Lcom/android/dx/rop/cst/CstMemberRef;->nat:Lcom/android/dx/rop/cst/CstNat;

    .line 46
    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "nat == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "definingClass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected compareTo0(Lcom/android/dx/rop/cst/Constant;)I
    .locals 5
    .param p1, "other"    # Lcom/android/dx/rop/cst/Constant;

    .line 75
    move-object v0, p1

    check-cast v0, Lcom/android/dx/rop/cst/CstMemberRef;

    .line 76
    .local v0, "otherMember":Lcom/android/dx/rop/cst/CstMemberRef;
    iget-object v1, p0, Lcom/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/android/dx/rop/cst/CstType;

    iget-object v2, v0, Lcom/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {v1, v2}, Lcom/android/dx/rop/cst/CstType;->compareTo(Lcom/android/dx/rop/cst/Constant;)I

    move-result v1

    .line 78
    .local v1, "cmp":I
    if-eqz v1, :cond_0

    .line 79
    return v1

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/android/dx/rop/cst/CstMemberRef;->nat:Lcom/android/dx/rop/cst/CstNat;

    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstNat;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v2

    .line 83
    .local v2, "thisName":Lcom/android/dx/rop/cst/CstString;
    iget-object v3, v0, Lcom/android/dx/rop/cst/CstMemberRef;->nat:Lcom/android/dx/rop/cst/CstNat;

    invoke-virtual {v3}, Lcom/android/dx/rop/cst/CstNat;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v3

    .line 85
    .local v3, "otherName":Lcom/android/dx/rop/cst/CstString;
    invoke-virtual {v2, v3}, Lcom/android/dx/rop/cst/CstString;->compareTo(Lcom/android/dx/rop/cst/Constant;)I

    move-result v4

    return v4
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 51
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/cst/CstMemberRef;

    .line 56
    .local v1, "otherRef":Lcom/android/dx/rop/cst/CstMemberRef;
    iget-object v2, p0, Lcom/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/android/dx/rop/cst/CstType;

    iget-object v3, v1, Lcom/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {v2, v3}, Lcom/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/dx/rop/cst/CstMemberRef;->nat:Lcom/android/dx/rop/cst/CstNat;

    iget-object v3, v1, Lcom/android/dx/rop/cst/CstMemberRef;->nat:Lcom/android/dx/rop/cst/CstNat;

    .line 57
    invoke-virtual {v2, v3}, Lcom/android/dx/rop/cst/CstNat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 56
    :goto_0
    return v0

    .line 52
    .end local v1    # "otherRef":Lcom/android/dx/rop/cst/CstMemberRef;
    :cond_2
    :goto_1
    return v0
.end method

.method public final getDefiningClass()Lcom/android/dx/rop/cst/CstType;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/android/dx/rop/cst/CstType;

    return-object v0
.end method

.method public final getNat()Lcom/android/dx/rop/cst/CstNat;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstMemberRef;->nat:Lcom/android/dx/rop/cst/CstNat;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstType;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/dx/rop/cst/CstMemberRef;->nat:Lcom/android/dx/rop/cst/CstNat;

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstNat;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final isCategory2()Z
    .locals 1

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public final toHuman()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/dx/rop/cst/CstMemberRef;->definingClass:Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/rop/cst/CstMemberRef;->nat:Lcom/android/dx/rop/cst/CstNat;

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstMemberRef;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstMemberRef;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
