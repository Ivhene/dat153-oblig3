.class Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut;
.super Ljava/lang/Object;
.source "MockMethodAdvice.java"

# interfaces
.implements Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConstructorShortcut"
.end annotation


# instance fields
.field private final identifier:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "identifier"    # Ljava/lang/String;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut;->identifier:Ljava/lang/String;

    .line 394
    return-void
.end method

.method static synthetic access$700(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut;

    .line 387
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/Object;Ljava/util/List;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/util/List;

    .line 387
    invoke-static {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut;->toFrames(Ljava/lang/Object;Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static toFrames(Ljava/lang/Object;Ljava/util/List;)[Ljava/lang/Object;
    .locals 5
    .param p0, "self"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 656
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/type/TypeDescription;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 657
    .local v0, "frames":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 658
    const/4 v1, 0x0

    .line 659
    .local v1, "index":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    .line 661
    .local v3, "type":Lnet/bytebuddy/description/type/TypeDescription;
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v3, v4}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 662
    invoke-interface {v3, v4}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 663
    invoke-interface {v3, v4}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 664
    invoke-interface {v3, v4}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 665
    invoke-interface {v3, v4}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 667
    :cond_0
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v3, v4}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 668
    sget-object v4, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    .local v4, "frame":Ljava/lang/Object;
    goto :goto_2

    .line 669
    .end local v4    # "frame":Ljava/lang/Object;
    :cond_1
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v3, v4}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 670
    sget-object v4, Lnet/bytebuddy/jar/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    .restart local v4    # "frame":Ljava/lang/Object;
    goto :goto_2

    .line 671
    .end local v4    # "frame":Ljava/lang/Object;
    :cond_2
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v3, v4}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 672
    sget-object v4, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    .restart local v4    # "frame":Ljava/lang/Object;
    goto :goto_2

    .line 674
    .end local v4    # "frame":Ljava/lang/Object;
    :cond_3
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "frame":Ljava/lang/Object;
    goto :goto_2

    .line 666
    .end local v4    # "frame":Ljava/lang/Object;
    :cond_4
    :goto_1
    sget-object v4, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    .line 676
    .restart local v4    # "frame":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    aput-object v4, v0, v1

    .line 677
    .end local v3    # "type":Lnet/bytebuddy/description/type/TypeDescription;
    .end local v4    # "frame":Ljava/lang/Object;
    goto :goto_0

    .line 678
    :cond_5
    return-object v0
.end method


# virtual methods
.method public wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;II)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 14
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p3, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p4, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;
    .param p5, "typePool"    # Lnet/bytebuddy/pool/TypePool;
    .param p6, "writerFlags"    # I
    .param p7, "readerFlags"    # I

    .line 405
    invoke-interface/range {p2 .. p2}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_3

    const-class v0, Ljava/lang/Object;

    move-object v9, p1

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 406
    nop

    .line 408
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    .line 409
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 410
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    .line 411
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isPrivate()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    .line 412
    .local v0, "constructors":Lnet/bytebuddy/description/method/MethodList;, "Lnet/bytebuddy/description/method/MethodList<Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;>;"
    const v1, 0x7fffffff

    .line 413
    .local v1, "arguments":I
    const/4 v2, 0x1

    .line 414
    .local v2, "packagePrivate":Z
    const/4 v3, 0x0

    .line 415
    .local v3, "current":Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v10, v1

    move v11, v2

    move-object v12, v3

    .end local v1    # "arguments":I
    .end local v2    # "packagePrivate":Z
    .end local v3    # "current":Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .local v10, "arguments":I
    .local v11, "packagePrivate":Z
    .local v12, "current":Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 419
    .local v1, "constructor":Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v2

    if-ge v2, v10, :cond_1

    if-nez v11, :cond_0

    .line 420
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isPackagePrivate()Z

    move-result v2

    if-nez v2, :cond_1

    .line 421
    :cond_0
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v2

    .line 422
    .end local v10    # "arguments":I
    .local v2, "arguments":I
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isPackagePrivate()Z

    move-result v3

    .line 423
    .end local v11    # "packagePrivate":Z
    .local v3, "packagePrivate":Z
    move-object v5, v1

    move v10, v2

    move v11, v3

    move-object v12, v5

    .line 425
    .end local v1    # "constructor":Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .end local v2    # "arguments":I
    .end local v3    # "packagePrivate":Z
    .restart local v10    # "arguments":I
    .restart local v11    # "packagePrivate":Z
    :cond_1
    goto :goto_0

    .line 426
    :cond_2
    if-eqz v12, :cond_4

    .line 427
    move-object v7, v12

    .line 428
    .local v7, "selected":Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    new-instance v13, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;

    sget v3, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    move-object v1, v13

    move-object v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, p1

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;-><init>(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut;ILnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/method/MethodDescription;)V

    return-object v13

    .line 405
    .end local v0    # "constructors":Lnet/bytebuddy/description/method/MethodList;, "Lnet/bytebuddy/description/method/MethodList<Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;>;"
    .end local v7    # "selected":Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .end local v10    # "arguments":I
    .end local v11    # "packagePrivate":Z
    .end local v12    # "current":Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    :cond_3
    move-object v9, p1

    .line 652
    :cond_4
    return-object p3
.end method
