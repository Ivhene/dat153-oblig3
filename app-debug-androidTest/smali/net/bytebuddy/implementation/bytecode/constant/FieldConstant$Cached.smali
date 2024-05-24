.class public Lnet/bytebuddy/implementation/bytecode/constant/FieldConstant$Cached;
.super Ljava/lang/Object;
.source "FieldConstant.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/constant/FieldConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Cached"
.end annotation


# instance fields
.field private final fieldConstant:Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V
    .locals 0
    .param p1, "fieldConstant"    # Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/constant/FieldConstant$Cached;->fieldConstant:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 112
    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 2
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;

    .line 125
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/FieldConstant$Cached;->fieldConstant:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const-class v1, Ljava/lang/reflect/Field;

    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lnet/bytebuddy/implementation/Implementation$Context;->cache(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forField(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;->read()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    .line 127
    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    .line 125
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 137
    if-ne p0, p1, :cond_0

    .line 138
    const/4 v0, 0x1

    return v0

    .line 139
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/implementation/bytecode/constant/FieldConstant$Cached;

    .line 143
    .local v0, "cached":Lnet/bytebuddy/implementation/bytecode/constant/FieldConstant$Cached;
    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/constant/FieldConstant$Cached;->fieldConstant:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v2, v0, Lnet/bytebuddy/implementation/bytecode/constant/FieldConstant$Cached;->fieldConstant:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 140
    .end local v0    # "cached":Lnet/bytebuddy/implementation/bytecode/constant/FieldConstant$Cached;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 132
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/FieldConstant$Cached;->fieldConstant:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/FieldConstant$Cached;->fieldConstant:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v0

    return v0
.end method
