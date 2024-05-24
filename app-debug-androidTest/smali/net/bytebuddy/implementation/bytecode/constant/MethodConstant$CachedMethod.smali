.class public Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedMethod;
.super Ljava/lang/Object;
.source "MethodConstant.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CachedMethod"
.end annotation


# static fields
.field private static final METHOD_TYPE:Lnet/bytebuddy/description/type/TypeDescription;


# instance fields
.field private final methodConstant:Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 435
    const-class v0, Ljava/lang/reflect/Method;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedMethod;->METHOD_TYPE:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V
    .locals 0
    .param p1, "methodConstant"    # Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedMethod;->methodConstant:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 449
    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 2
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;

    .line 462
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedMethod;->methodConstant:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedMethod;->METHOD_TYPE:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p2, v0, v1}, Lnet/bytebuddy/implementation/Implementation$Context;->cache(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forField(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    move-result-object v0

    .line 463
    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;->read()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    .line 464
    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    .line 462
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 474
    if-ne p0, p1, :cond_0

    .line 475
    const/4 v0, 0x1

    return v0

    .line 476
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 479
    :cond_1
    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedMethod;

    .line 480
    .local v0, "cachedMethod":Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedMethod;
    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedMethod;->methodConstant:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v2, v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedMethod;->methodConstant:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 477
    .end local v0    # "cachedMethod":Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedMethod;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 469
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedMethod;->methodConstant:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 455
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedMethod;->methodConstant:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v0

    return v0
.end method
