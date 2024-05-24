.class public final Lcom/android/dx/rop/cst/CstFieldRef;
.super Lcom/android/dx/rop/cst/CstMemberRef;
.source "CstFieldRef.java"


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V
    .locals 0
    .param p1, "definingClass"    # Lcom/android/dx/rop/cst/CstType;
    .param p2, "nat"    # Lcom/android/dx/rop/cst/CstNat;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/dx/rop/cst/CstMemberRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    .line 48
    return-void
.end method

.method public static forPrimitiveType(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstFieldRef;
    .locals 3
    .param p0, "primitiveType"    # Lcom/android/dx/rop/type/Type;

    .line 36
    new-instance v0, Lcom/android/dx/rop/cst/CstFieldRef;

    invoke-static {p0}, Lcom/android/dx/rop/cst/CstType;->forBoxedPrimitiveType(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstType;

    move-result-object v1

    sget-object v2, Lcom/android/dx/rop/cst/CstNat;->PRIMITIVE_TYPE_NAT:Lcom/android/dx/rop/cst/CstNat;

    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/cst/CstFieldRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    return-object v0
.end method


# virtual methods
.method protected compareTo0(Lcom/android/dx/rop/cst/Constant;)I
    .locals 5
    .param p1, "other"    # Lcom/android/dx/rop/cst/Constant;

    .line 69
    invoke-super {p0, p1}, Lcom/android/dx/rop/cst/CstMemberRef;->compareTo0(Lcom/android/dx/rop/cst/Constant;)I

    move-result v0

    .line 71
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    .line 72
    return v0

    .line 75
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/cst/CstFieldRef;

    .line 76
    .local v1, "otherField":Lcom/android/dx/rop/cst/CstFieldRef;
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstFieldRef;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstNat;->getDescriptor()Lcom/android/dx/rop/cst/CstString;

    move-result-object v2

    .line 77
    .local v2, "thisDescriptor":Lcom/android/dx/rop/cst/CstString;
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstFieldRef;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/cst/CstNat;->getDescriptor()Lcom/android/dx/rop/cst/CstString;

    move-result-object v3

    .line 78
    .local v3, "otherDescriptor":Lcom/android/dx/rop/cst/CstString;
    invoke-virtual {v2, v3}, Lcom/android/dx/rop/cst/CstString;->compareTo(Lcom/android/dx/rop/cst/Constant;)I

    move-result v4

    return v4
.end method

.method public getType()Lcom/android/dx/rop/type/Type;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstFieldRef;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstNat;->getFieldType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "field"

    return-object v0
.end method
