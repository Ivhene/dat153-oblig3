.class Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;
.source "MockMethodAdvice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut;->wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;II)Lnet/bytebuddy/jar/asm/MethodVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut;

.field final synthetic val$implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

.field final synthetic val$instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

.field final synthetic val$instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field final synthetic val$selected:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# direct methods
.method constructor <init>(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut;ILnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/method/MethodDescription;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut;
    .param p2, "arg0"    # I
    .param p3, "arg1"    # Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 428
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->this$0:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut;

    iput-object p4, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    iput-object p5, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p6, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$selected:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iput-object p7, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-direct {p0, p2, p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    return-void
.end method


# virtual methods
.method public visitCode()V
    .locals 21

    .line 431
    move-object/from16 v6, p0

    invoke-super/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitCode()V

    .line 451
    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    move-object v7, v0

    .line 452
    .local v7, "label":Lnet/bytebuddy/jar/asm/Label;
    iget-object v0, v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->this$0:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut;

    invoke-static {v0}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut;->access$700(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut;)Ljava/lang/String;

    move-result-object v0

    invoke-super {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 453
    iget-object v0, v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    .line 454
    invoke-interface {v0}, Lnet/bytebuddy/implementation/Implementation$Context;->getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    .line 455
    invoke-virtual {v0, v1}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-super {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_0

    .line 458
    :cond_0
    iget-object v0, v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-super {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 459
    const/16 v1, 0xb8

    const-class v0, Ljava/lang/Class;

    .line 461
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "forName"

    const-class v0, Ljava/lang/Class;

    .line 464
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/Class;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    new-array v4, v8, [Lnet/bytebuddy/jar/asm/Type;

    const-class v5, Ljava/lang/String;

    .line 465
    invoke-static {v5}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/Class;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v5

    aput-object v5, v4, v9

    .line 463
    invoke-static {v0, v4}, Lnet/bytebuddy/jar/asm/Type;->getMethodDescriptor(Lnet/bytebuddy/jar/asm/Type;[Lnet/bytebuddy/jar/asm/Type;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 459
    move-object/from16 v0, p0

    invoke-super/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 468
    :goto_0
    const/16 v1, 0xb8

    const-class v0, Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;

    .line 470
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isConstructorMock"

    sget-object v0, Lnet/bytebuddy/jar/asm/Type;->BOOLEAN_TYPE:Lnet/bytebuddy/jar/asm/Type;

    const/4 v10, 0x2

    new-array v4, v10, [Lnet/bytebuddy/jar/asm/Type;

    const-class v5, Ljava/lang/String;

    .line 474
    invoke-static {v5}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/Class;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v5

    aput-object v5, v4, v9

    const-class v5, Ljava/lang/Class;

    .line 475
    invoke-static {v5}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/Class;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v5

    aput-object v5, v4, v8

    .line 472
    invoke-static {v0, v4}, Lnet/bytebuddy/jar/asm/Type;->getMethodDescriptor(Lnet/bytebuddy/jar/asm/Type;[Lnet/bytebuddy/jar/asm/Type;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 468
    move-object/from16 v0, p0

    invoke-super/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 477
    const/4 v11, 0x3

    invoke-super {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 478
    const/16 v0, 0x9f

    invoke-super {v6, v0, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 479
    const/16 v12, 0x19

    invoke-super {v6, v12, v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 481
    iget-object v0, v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$selected:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription;

    .line 482
    .local v1, "type":Lnet/bytebuddy/description/type/TypeDescription;
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 483
    invoke-interface {v1, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 484
    invoke-interface {v1, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 485
    invoke-interface {v1, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 486
    invoke-interface {v1, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 488
    :cond_1
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 489
    const/16 v2, 0x9

    invoke-super {v6, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_3

    .line 490
    :cond_2
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 491
    const/16 v2, 0xb

    invoke-super {v6, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_3

    .line 492
    :cond_3
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 493
    const/16 v2, 0xe

    invoke-super {v6, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_3

    .line 495
    :cond_4
    invoke-super {v6, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_3

    .line 487
    :cond_5
    :goto_2
    invoke-super {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 497
    .end local v1    # "type":Lnet/bytebuddy/description/type/TypeDescription;
    :goto_3
    goto :goto_1

    .line 498
    :cond_6
    const/16 v1, 0xb7

    iget-object v0, v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$selected:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 500
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$selected:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 501
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$selected:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 502
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 498
    move-object/from16 v0, p0

    invoke-super/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 504
    iget-object v0, v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->this$0:Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut;

    invoke-static {v0}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut;->access$700(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut;)Ljava/lang/String;

    move-result-object v0

    invoke-super {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 505
    iget-object v0, v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    .line 506
    invoke-interface {v0}, Lnet/bytebuddy/implementation/Implementation$Context;->getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    .line 507
    invoke-virtual {v0, v1}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 508
    iget-object v0, v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-super {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_4

    .line 510
    :cond_7
    iget-object v0, v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-super {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 511
    const/16 v1, 0xb8

    const-class v0, Ljava/lang/Class;

    .line 513
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "forName"

    const-class v0, Ljava/lang/Class;

    .line 516
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/Class;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    new-array v4, v8, [Lnet/bytebuddy/jar/asm/Type;

    const-class v5, Ljava/lang/String;

    .line 517
    invoke-static {v5}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/Class;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v5

    aput-object v5, v4, v9

    .line 515
    invoke-static {v0, v4}, Lnet/bytebuddy/jar/asm/Type;->getMethodDescriptor(Lnet/bytebuddy/jar/asm/Type;[Lnet/bytebuddy/jar/asm/Type;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 511
    move-object/from16 v0, p0

    invoke-super/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 520
    :goto_4
    invoke-super {v6, v12, v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 521
    iget-object v0, v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-super {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 522
    const-class v0, Ljava/lang/Object;

    .line 523
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 522
    const/16 v13, 0xbd

    invoke-super {v6, v13, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 524
    const/4 v0, 0x0

    .line 526
    .local v0, "index":I
    iget-object v1, v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v15, 0x53

    const/16 v5, 0x59

    if-eqz v1, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lnet/bytebuddy/description/method/ParameterDescription;

    .line 527
    .local v16, "parameter":Lnet/bytebuddy/description/method/ParameterDescription;
    invoke-super {v6, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 528
    add-int/lit8 v17, v0, 0x1

    .end local v0    # "index":I
    .local v17, "index":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-super {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 529
    nop

    .line 531
    invoke-interface/range {v16 .. v16}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v5

    .line 532
    .local v5, "type":Lnet/bytebuddy/jar/asm/Type;
    nop

    .line 533
    const/16 v0, 0x15

    invoke-virtual {v5, v0}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result v0

    invoke-interface/range {v16 .. v16}, Lnet/bytebuddy/description/method/ParameterDescription;->getOffset()I

    move-result v1

    .line 532
    invoke-super {v6, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 534
    invoke-interface/range {v16 .. v16}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 535
    nop

    .line 538
    invoke-interface/range {v16 .. v16}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    .line 539
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 540
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->asBoxed()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 541
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v4

    .line 542
    .local v4, "wrapper":Lnet/bytebuddy/jar/asm/Type;
    const/16 v1, 0xb8

    .line 544
    invoke-virtual {v4}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "valueOf"

    new-array v0, v8, [Lnet/bytebuddy/jar/asm/Type;

    aput-object v5, v0, v9

    .line 546
    invoke-static {v4, v0}, Lnet/bytebuddy/jar/asm/Type;->getMethodDescriptor(Lnet/bytebuddy/jar/asm/Type;[Lnet/bytebuddy/jar/asm/Type;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    .line 542
    move-object/from16 v0, p0

    move-object/from16 v20, v4

    .end local v4    # "wrapper":Lnet/bytebuddy/jar/asm/Type;
    .local v20, "wrapper":Lnet/bytebuddy/jar/asm/Type;
    move-object/from16 v4, v18

    move-object/from16 v18, v5

    .end local v5    # "type":Lnet/bytebuddy/jar/asm/Type;
    .local v18, "type":Lnet/bytebuddy/jar/asm/Type;
    move/from16 v5, v19

    invoke-super/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_6

    .line 534
    .end local v18    # "type":Lnet/bytebuddy/jar/asm/Type;
    .end local v20    # "wrapper":Lnet/bytebuddy/jar/asm/Type;
    .restart local v5    # "type":Lnet/bytebuddy/jar/asm/Type;
    :cond_8
    move-object/from16 v18, v5

    .line 549
    .end local v5    # "type":Lnet/bytebuddy/jar/asm/Type;
    .restart local v18    # "type":Lnet/bytebuddy/jar/asm/Type;
    :goto_6
    invoke-super {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 550
    .end local v16    # "parameter":Lnet/bytebuddy/description/method/ParameterDescription;
    .end local v18    # "type":Lnet/bytebuddy/jar/asm/Type;
    move/from16 v0, v17

    goto/16 :goto_5

    .line 551
    .end local v17    # "index":I
    .restart local v0    # "index":I
    :cond_9
    const/4 v0, 0x0

    .line 552
    iget-object v1, v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-super {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 553
    const-class v1, Ljava/lang/String;

    .line 554
    invoke-static {v1}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 553
    invoke-super {v6, v13, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 556
    iget-object v1, v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v13, v0

    .end local v0    # "index":I
    .local v13, "index":I
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription;

    .line 557
    .local v0, "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    invoke-super {v6, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 558
    add-int/lit8 v2, v13, 0x1

    .end local v13    # "index":I
    .local v2, "index":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-super {v6, v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 559
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-super {v6, v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 560
    invoke-super {v6, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 561
    .end local v0    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    move v13, v2

    goto :goto_7

    .line 562
    .end local v2    # "index":I
    .restart local v13    # "index":I
    :cond_a
    const/16 v1, 0xb8

    const-class v0, Lorg/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher;

    .line 564
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "handleConstruction"

    const-class v0, Ljava/lang/Object;

    .line 567
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/Class;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    const/4 v4, 0x5

    new-array v4, v4, [Lnet/bytebuddy/jar/asm/Type;

    const-class v14, Ljava/lang/String;

    .line 568
    invoke-static {v14}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/Class;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v14

    aput-object v14, v4, v9

    const-class v14, Ljava/lang/Class;

    .line 569
    invoke-static {v14}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/Class;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v14

    aput-object v14, v4, v8

    const-class v8, Ljava/lang/Object;

    .line 570
    invoke-static {v8}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/Class;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v8

    aput-object v8, v4, v10

    const-class v8, [Ljava/lang/Object;

    .line 571
    invoke-static {v8}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/Class;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v8

    aput-object v8, v4, v11

    const-class v8, [Ljava/lang/String;

    .line 572
    invoke-static {v8}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/Class;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v8

    const/4 v10, 0x4

    aput-object v8, v4, v10

    .line 566
    invoke-static {v0, v4}, Lnet/bytebuddy/jar/asm/Type;->getMethodDescriptor(Lnet/bytebuddy/jar/asm/Type;[Lnet/bytebuddy/jar/asm/Type;)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    .line 562
    move-object/from16 v0, p0

    move v10, v5

    move v5, v8

    invoke-super/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 574
    iget-object v0, v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 575
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isStatic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/field/FieldList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lnet/bytebuddy/description/field/FieldList;

    .line 576
    .local v8, "fields":Lnet/bytebuddy/description/field/FieldList;, "Lnet/bytebuddy/description/field/FieldList<Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    iget-object v0, v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 577
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v0

    .line 576
    const/16 v1, 0xc0

    invoke-super {v6, v1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 578
    invoke-super {v6, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 579
    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    move-object v11, v0

    .line 580
    .local v11, "noSpy":Lnet/bytebuddy/jar/asm/Label;
    const/16 v0, 0xc6

    invoke-super {v6, v0, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 581
    invoke-interface {v8}, Lnet/bytebuddy/description/field/FieldList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v14, 0x57

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/field/FieldDescription;

    .line 582
    .local v1, "field":Lnet/bytebuddy/description/field/FieldDescription;
    invoke-super {v6, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 583
    iget-object v2, v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 585
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v2

    .line 586
    invoke-interface {v1}, Lnet/bytebuddy/description/field/FieldDescription;->getInternalName()Ljava/lang/String;

    move-result-object v3

    .line 587
    invoke-interface {v1}, Lnet/bytebuddy/description/field/FieldDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    .line 583
    const/16 v5, 0xb4

    invoke-super {v6, v5, v2, v3, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-super {v6, v12, v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 589
    nop

    .line 590
    invoke-interface {v1}, Lnet/bytebuddy/description/field/FieldDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v2

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    if-ne v2, v3, :cond_b

    .line 591
    const/16 v2, 0x5b

    goto :goto_9

    .line 592
    :cond_b
    const/16 v2, 0x5a

    .line 589
    :goto_9
    invoke-super {v6, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 593
    invoke-super {v6, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 594
    iget-object v2, v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 596
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v2

    .line 597
    invoke-interface {v1}, Lnet/bytebuddy/description/field/FieldDescription;->getInternalName()Ljava/lang/String;

    move-result-object v3

    .line 598
    invoke-interface {v1}, Lnet/bytebuddy/description/field/FieldDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    .line 594
    const/16 v5, 0xb5

    invoke-super {v6, v5, v2, v3, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    .end local v1    # "field":Lnet/bytebuddy/description/field/FieldDescription;
    goto :goto_8

    .line 600
    :cond_c
    invoke-super {v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    .line 601
    iget-object v0, v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    .line 602
    invoke-interface {v0}, Lnet/bytebuddy/implementation/Implementation$Context;->getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/ClassFileVersion;->JAVA_V6:Lnet/bytebuddy/ClassFileVersion;

    .line 603
    invoke-virtual {v0, v1}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 604
    iget-object v0, v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 606
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 608
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    .line 609
    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    .line 610
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v1

    .line 605
    invoke-static {v0, v1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut;->access$800(Ljava/lang/Object;Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v10

    .line 611
    .local v10, "locals":[Ljava/lang/Object;
    const/4 v1, 0x0

    array-length v2, v10

    const/4 v4, 0x1

    iget-object v0, v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 616
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    .line 611
    move-object/from16 v0, p0

    move-object v3, v10

    invoke-super/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 618
    .end local v10    # "locals":[Ljava/lang/Object;
    :cond_d
    invoke-super {v6, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 619
    const/16 v0, 0xb1

    invoke-super {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 620
    invoke-super {v6, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    .line 621
    iget-object v0, v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    .line 622
    invoke-interface {v0}, Lnet/bytebuddy/implementation/Implementation$Context;->getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/ClassFileVersion;->JAVA_V6:Lnet/bytebuddy/ClassFileVersion;

    .line 623
    invoke-virtual {v0, v1}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 624
    sget-object v0, Lnet/bytebuddy/jar/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    iget-object v1, v6, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 628
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    .line 629
    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    .line 630
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v1

    .line 625
    invoke-static {v0, v1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut;->access$800(Ljava/lang/Object;Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v10

    .line 631
    .restart local v10    # "locals":[Ljava/lang/Object;
    const/4 v1, 0x0

    array-length v2, v10

    const/4 v4, 0x0

    new-array v5, v9, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object v3, v10

    invoke-super/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 634
    .end local v10    # "locals":[Ljava/lang/Object;
    :cond_e
    return-void
.end method

.method public visitMaxs(II)V
    .locals 4
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .line 638
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$selected:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getStackSize()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 640
    .local v0, "prequel":I
    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ConstructorShortcut$1;->val$instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/ParameterDescription;

    .line 641
    .local v2, "parameter":Lnet/bytebuddy/description/method/ParameterDescription;
    nop

    .line 644
    invoke-interface {v2}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    .line 642
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 645
    const/16 v3, 0x8

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 646
    .end local v2    # "parameter":Lnet/bytebuddy/description/method/ParameterDescription;
    goto :goto_0

    .line 647
    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-super {p0, v1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMaxs(II)V

    .line 648
    return-void
.end method
