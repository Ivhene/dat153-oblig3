.class public final Lcom/android/dx/rop/cst/CstProtoRef;
.super Lcom/android/dx/rop/cst/TypedConstant;
.source "CstProtoRef.java"


# instance fields
.field private final prototype:Lcom/android/dx/rop/type/Prototype;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/type/Prototype;)V
    .locals 0
    .param p1, "prototype"    # Lcom/android/dx/rop/type/Prototype;

    .line 29
    invoke-direct {p0}, Lcom/android/dx/rop/cst/TypedConstant;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/dx/rop/cst/CstProtoRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    .line 31
    return-void
.end method

.method public static make(Lcom/android/dx/rop/cst/CstString;)Lcom/android/dx/rop/cst/CstProtoRef;
    .locals 2
    .param p0, "descriptor"    # Lcom/android/dx/rop/cst/CstString;

    .line 41
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dx/rop/type/Prototype;->fromDescriptor(Ljava/lang/String;)Lcom/android/dx/rop/type/Prototype;

    move-result-object v0

    .line 42
    .local v0, "prototype":Lcom/android/dx/rop/type/Prototype;
    new-instance v1, Lcom/android/dx/rop/cst/CstProtoRef;

    invoke-direct {v1, v0}, Lcom/android/dx/rop/cst/CstProtoRef;-><init>(Lcom/android/dx/rop/type/Prototype;)V

    return-object v1
.end method


# virtual methods
.method protected compareTo0(Lcom/android/dx/rop/cst/Constant;)I
    .locals 3
    .param p1, "other"    # Lcom/android/dx/rop/cst/Constant;

    .line 75
    move-object v0, p1

    check-cast v0, Lcom/android/dx/rop/cst/CstProtoRef;

    .line 76
    .local v0, "otherCstProtoRef":Lcom/android/dx/rop/cst/CstProtoRef;
    iget-object v1, p0, Lcom/android/dx/rop/cst/CstProtoRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstProtoRef;->getPrototype()Lcom/android/dx/rop/type/Prototype;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dx/rop/type/Prototype;->compareTo(Lcom/android/dx/rop/type/Prototype;)I

    move-result v1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 48
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstProtoRef;

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    return v0

    .line 51
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/dx/rop/cst/CstProtoRef;

    .line 52
    .local v0, "otherCstProtoRef":Lcom/android/dx/rop/cst/CstProtoRef;
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstProtoRef;->getPrototype()Lcom/android/dx/rop/type/Prototype;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstProtoRef;->getPrototype()Lcom/android/dx/rop/type/Prototype;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dx/rop/type/Prototype;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getPrototype()Lcom/android/dx/rop/type/Prototype;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstProtoRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    return-object v0
.end method

.method public getType()Lcom/android/dx/rop/type/Type;
    .locals 1

    .line 97
    sget-object v0, Lcom/android/dx/rop/type/Type;->METHOD_TYPE:Lcom/android/dx/rop/type/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstProtoRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    invoke-virtual {v0}, Lcom/android/dx/rop/type/Prototype;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCategory2()Z
    .locals 1

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstProtoRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    invoke-virtual {v0}, Lcom/android/dx/rop/type/Prototype;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstProtoRef;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstProtoRef;->toHuman()Ljava/lang/String;

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

.method public typeName()Ljava/lang/String;
    .locals 1

    .line 69
    const-string v0, "proto"

    return-object v0
.end method
