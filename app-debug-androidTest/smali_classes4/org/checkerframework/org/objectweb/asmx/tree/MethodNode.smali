.class public Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;
.super Lorg/checkerframework/org/objectweb/asmx/tree/MemberNode;
.source "MethodNode.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;


# instance fields
.field public access:I

.field public annotationDefault:Ljava/lang/Object;

.field public desc:Ljava/lang/String;

.field public exceptions:Ljava/util/List;

.field public instructions:Ljava/util/List;

.field public invisibleParameterAnnotations:[Ljava/util/List;

.field public lineNumbers:Ljava/util/List;

.field public localVariables:Ljava/util/List;

.field public maxLocals:I

.field public maxStack:I

.field public name:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public tryCatchBlocks:Ljava/util/List;

.field public visibleParameterAnnotations:[Ljava/util/List;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 181
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/MemberNode;-><init>()V

    .line 182
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->access:I

    .line 183
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->name:Ljava/lang/String;

    .line 184
    iput-object p3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->desc:Ljava/lang/String;

    .line 185
    iput-object p4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->signature:Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez p5, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, p5

    :goto_0
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->exceptions:Ljava/util/List;

    .line 189
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 190
    .local v0, "isAbstract":Z
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x18

    :goto_2
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->instructions:Ljava/util/List;

    .line 191
    if-nez v0, :cond_3

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->localVariables:Ljava/util/List;

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->lineNumbers:Ljava/util/List;

    .line 195
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    .line 196
    if-eqz p5, :cond_4

    .line 197
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->exceptions:Ljava/util/List;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 199
    :cond_4
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;)V
    .locals 7
    .param p1, "cv"    # Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    .line 370
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->exceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 371
    .local v0, "exceptions":[Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->exceptions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 372
    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->access:I

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->name:Ljava/lang/String;

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->desc:Ljava/lang/String;

    iget-object v5, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->signature:Ljava/lang/String;

    move-object v1, p1

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    move-result-object v1

    .line 377
    .local v1, "mv":Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    if-eqz v1, :cond_0

    .line 378
    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->accept(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    .line 380
    :cond_0
    return-void
.end method

.method public accept(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 8
    .param p1, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 390
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->annotationDefault:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 391
    invoke-interface {p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitAnnotationDefault()Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v0

    .line 392
    .local v0, "av":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->annotationDefault:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->accept(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 393
    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitEnd()V

    .line 395
    .end local v0    # "av":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 396
    .local v0, "n":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    .line 397
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;

    .line 398
    .local v4, "an":Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;
    iget-object v5, v4, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-interface {p1, v5, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->accept(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;)V

    .line 396
    .end local v4    # "an":Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 400
    :cond_2
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    if-nez v4, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    move v0, v4

    .line 401
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_4

    .line 402
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;

    .line 403
    .restart local v4    # "an":Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;
    iget-object v5, v4, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-interface {p1, v5, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->accept(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;)V

    .line 401
    .end local v4    # "an":Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 405
    :cond_4
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    if-nez v4, :cond_5

    move v4, v1

    goto :goto_4

    :cond_5
    array-length v4, v4

    :goto_4
    move v0, v4

    .line 408
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_8

    .line 409
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    aget-object v4, v4, v2

    .line 410
    .local v4, "l":Ljava/util/List;
    if-nez v4, :cond_6

    .line 411
    goto :goto_7

    .line 413
    :cond_6
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 414
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;

    .line 415
    .local v6, "an":Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;
    iget-object v7, v6, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-interface {p1, v2, v7, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->accept(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;)V

    .line 413
    .end local v6    # "an":Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 408
    .end local v4    # "l":Ljava/util/List;
    .end local v5    # "j":I
    :cond_7
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 418
    :cond_8
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    if-nez v3, :cond_9

    move v3, v1

    goto :goto_8

    :cond_9
    array-length v3, v3

    :goto_8
    move v0, v3

    .line 421
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_c

    .line 422
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    aget-object v3, v3, v2

    .line 423
    .local v3, "l":Ljava/util/List;
    if-nez v3, :cond_a

    .line 424
    goto :goto_b

    .line 426
    :cond_a
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_b

    .line 427
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;

    .line 428
    .local v5, "an":Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;
    iget-object v6, v5, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-interface {p1, v2, v6, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;->accept(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;)V

    .line 426
    .end local v5    # "an":Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 421
    .end local v3    # "l":Ljava/util/List;
    .end local v4    # "j":I
    :cond_b
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 431
    :cond_c
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->attrs:Ljava/util/List;

    if-nez v3, :cond_d

    move v3, v1

    goto :goto_c

    :cond_d
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->attrs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_c
    move v0, v3

    .line 432
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_e

    .line 433
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->attrs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/objectweb/asmx/Attribute;

    invoke-interface {p1, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V

    .line 432
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 436
    :cond_e
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->instructions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_15

    .line 437
    invoke-interface {p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitCode()V

    .line 439
    const/4 v2, 0x0

    :goto_e
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_f

    .line 440
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;

    invoke-virtual {v3, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;->accept(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    .line 439
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 443
    :cond_f
    const/4 v2, 0x0

    :goto_f
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->instructions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_10

    .line 444
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->instructions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;

    invoke-virtual {v3, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;->accept(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    .line 443
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 447
    :cond_10
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->localVariables:Ljava/util/List;

    if-nez v3, :cond_11

    move v3, v1

    goto :goto_10

    :cond_11
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_10
    move v0, v3

    .line 448
    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_12

    .line 449
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->localVariables:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/objectweb/asmx/tree/LocalVariableNode;

    invoke-virtual {v3, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/LocalVariableNode;->accept(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    .line 448
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 452
    :cond_12
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->lineNumbers:Ljava/util/List;

    if-nez v3, :cond_13

    goto :goto_12

    :cond_13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    :goto_12
    move v0, v1

    .line 453
    const/4 v1, 0x0

    move v2, v1

    :goto_13
    if-ge v2, v0, :cond_14

    .line 454
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->lineNumbers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/objectweb/asmx/tree/LineNumberNode;

    invoke-virtual {v1, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/LineNumberNode;->accept(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    .line 453
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 457
    :cond_14
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->maxStack:I

    iget v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->maxLocals:I

    invoke-interface {p1, v1, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMaxs(II)V

    .line 459
    :cond_15
    invoke-interface {p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitEnd()V

    .line 460
    return-void
.end method

.method public visitAnnotationDefault()Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3

    .line 206
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;

    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode$1;-><init>(Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;I)V

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public visitCode()V
    .locals 0

    .line 243
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->instructions:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/tree/FieldInsnNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method

.method public visitIincInsn(II)V
    .locals 2
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .line 302
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->instructions:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/IincInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/IincInsnNode;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    return-void
.end method

.method public visitInsn(I)V
    .locals 2
    .param p1, "opcode"    # I

    .line 246
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->instructions:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/InsnNode;

    invoke-direct {v1, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/InsnNode;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method

.method public visitInsnAnnotation(ILorg/checkerframework/org/objectweb/asmx/TypePath;Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/checkerframework/org/objectweb/asmx/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 466
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitIntInsn(II)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .line 250
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->instructions:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/IntInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/IntInsnNode;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Handle;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/checkerframework/org/objectweb/asmx/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->instructions:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/InvokeDynamicInsnNode;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/tree/InvokeDynamicInsnNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Handle;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    return-void
.end method

.method public visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 290
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->instructions:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/JumpInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/JumpInsnNode;-><init>(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    return-void
.end method

.method public visitLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 2
    .param p1, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 294
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->instructions:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/LabelNode;

    invoke-direct {v1, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/LabelNode;-><init>(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 2
    .param p1, "cst"    # Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->instructions:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/LdcInsnNode;

    invoke-direct {v1, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/LdcInsnNode;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    return-void
.end method

.method public visitLineNumber(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 352
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->lineNumbers:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/LineNumberNode;

    invoke-direct {v1, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/LineNumberNode;-><init>(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p5, "end"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p6, "index"    # I

    .line 343
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->localVariables:Ljava/util/List;

    new-instance v8, Lorg/checkerframework/org/objectweb/asmx/tree/LocalVariableNode;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/org/objectweb/asmx/tree/LocalVariableNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;I)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    return-void
.end method

.method public visitLookupSwitchInsn(Lorg/checkerframework/org/objectweb/asmx/Label;[I[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 2
    .param p1, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 319
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->instructions:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/LookupSwitchInsnNode;

    invoke-direct {v1, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/tree/LookupSwitchInsnNode;-><init>(Lorg/checkerframework/org/objectweb/asmx/Label;[I[Lorg/checkerframework/org/objectweb/asmx/Label;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    return-void
.end method

.method public visitMaxs(II)V
    .locals 0
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .line 356
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->maxStack:I

    .line 357
    iput p2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->maxLocals:I

    .line 358
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->instructions:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/MethodInsnNode;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/tree/MethodInsnNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .line 323
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->instructions:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/MultiANewArrayInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/MultiANewArrayInsnNode;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 4
    .param p1, "parameter"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 219
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;

    invoke-direct {v0, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, "an":Lorg/checkerframework/org/objectweb/asmx/tree/AnnotationNode;
    const/4 v1, 0x1

    if-eqz p3, :cond_2

    .line 221
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    if-nez v2, :cond_0

    .line 222
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->desc:Ljava/lang/String;

    invoke-static {v2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v2

    array-length v2, v2

    .line 223
    .local v2, "params":I
    new-array v3, v2, [Ljava/util/List;

    iput-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    .line 225
    .end local v2    # "params":I
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    aget-object v3, v2, p1

    if-nez v3, :cond_1

    .line 226
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v3, v2, p1

    .line 228
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    aget-object v1, v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 230
    :cond_2
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    if-nez v2, :cond_3

    .line 231
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->desc:Ljava/lang/String;

    invoke-static {v2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v2

    array-length v2, v2

    .line 232
    .restart local v2    # "params":I
    new-array v3, v2, [Ljava/util/List;

    iput-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    .line 234
    .end local v2    # "params":I
    :cond_3
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    aget-object v3, v2, p1

    if-nez v3, :cond_4

    .line 235
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v3, v2, p1

    .line 237
    :cond_4
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    aget-object v1, v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :goto_0
    return-object v0
.end method

.method public visitTableSwitchInsn(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 2
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p4, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 311
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->instructions:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/TableSwitchInsnNode;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/tree/TableSwitchInsnNode;-><init>(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    return-void
.end method

.method public visitTryCatchBlock(Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Ljava/lang/String;)V
    .locals 2
    .param p1, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "end"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p3, "handler"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p4, "type"    # Ljava/lang/String;

    .line 332
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/tree/TryCatchBlockNode;-><init>(Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    return-void
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "inCode"    # Z

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->instructions:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/TypeInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/TypeInsnNode;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .line 254
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/MethodNode;->instructions:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/VarInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/tree/VarInsnNode;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    return-void
.end method
