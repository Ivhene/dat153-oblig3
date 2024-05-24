.class public Lnet/bytebuddy/asm/ModifierAdjustment$ModifierAdjustingClassVisitor;
.super Lnet/bytebuddy/jar/asm/ClassVisitor;
.source "ModifierAdjustment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/ModifierAdjustment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ModifierAdjustingClassVisitor"
.end annotation


# instance fields
.field private final fieldAdjustments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation
.end field

.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final methodAdjustments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment<",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;>;"
        }
    .end annotation
.end field

.field private final methods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final typeAdjustments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/jar/asm/ClassVisitor;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .param p1, "classVisitor"    # Lnet/bytebuddy/jar/asm/ClassVisitor;
    .param p5, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/jar/asm/ClassVisitor;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;>;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;>;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment<",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;>;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)V"
        }
    .end annotation

    .line 443
    .local p2, "typeAdjustments":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment<Lnet/bytebuddy/description/type/TypeDescription;>;>;"
    .local p3, "fieldAdjustments":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment<Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;>;"
    .local p4, "methodAdjustments":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment<Lnet/bytebuddy/description/method/MethodDescription;>;>;"
    .local p6, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    .local p7, "methods":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lnet/bytebuddy/description/method/MethodDescription;>;"
    sget v0, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;-><init>(ILnet/bytebuddy/jar/asm/ClassVisitor;)V

    .line 444
    iput-object p2, p0, Lnet/bytebuddy/asm/ModifierAdjustment$ModifierAdjustingClassVisitor;->typeAdjustments:Ljava/util/List;

    .line 445
    iput-object p3, p0, Lnet/bytebuddy/asm/ModifierAdjustment$ModifierAdjustingClassVisitor;->fieldAdjustments:Ljava/util/List;

    .line 446
    iput-object p4, p0, Lnet/bytebuddy/asm/ModifierAdjustment$ModifierAdjustingClassVisitor;->methodAdjustments:Ljava/util/List;

    .line 447
    iput-object p5, p0, Lnet/bytebuddy/asm/ModifierAdjustment$ModifierAdjustingClassVisitor;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 448
    iput-object p6, p0, Lnet/bytebuddy/asm/ModifierAdjustment$ModifierAdjustingClassVisitor;->fields:Ljava/util/Map;

    .line 449
    iput-object p7, p0, Lnet/bytebuddy/asm/ModifierAdjustment$ModifierAdjustingClassVisitor;->methods:Ljava/util/Map;

    .line 450
    return-void
.end method


# virtual methods
.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .param p1, "version"    # I
    .param p2, "modifiers"    # I
    .param p3, "internalName"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "superClassName"    # Ljava/lang/String;
    .param p6, "interfaceName"    # [Ljava/lang/String;

    .line 454
    iget-object v0, p0, Lnet/bytebuddy/asm/ModifierAdjustment$ModifierAdjustingClassVisitor;->typeAdjustments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;

    .line 455
    .local v1, "adjustment":Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;, "Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment<Lnet/bytebuddy/description/type/TypeDescription;>;"
    iget-object v2, p0, Lnet/bytebuddy/asm/ModifierAdjustment$ModifierAdjustingClassVisitor;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1, v2}, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    invoke-virtual {v1, p2}, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;->resolve(I)I

    move-result p2

    .line 457
    goto :goto_1

    .line 459
    .end local v1    # "adjustment":Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;, "Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment<Lnet/bytebuddy/description/type/TypeDescription;>;"
    :cond_0
    goto :goto_0

    .line 460
    :cond_1
    :goto_1
    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-super/range {v2 .. v8}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 9
    .param p1, "modifiers"    # I
    .param p2, "internalName"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 478
    iget-object v0, p0, Lnet/bytebuddy/asm/ModifierAdjustment$ModifierAdjustingClassVisitor;->fields:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    .line 479
    .local v0, "fieldDescription":Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;
    if-eqz v0, :cond_1

    .line 480
    iget-object v1, p0, Lnet/bytebuddy/asm/ModifierAdjustment$ModifierAdjustingClassVisitor;->fieldAdjustments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;

    .line 481
    .local v2, "adjustment":Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;, "Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment<Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    invoke-virtual {v2, v0}, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 482
    invoke-virtual {v2, p1}, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;->resolve(I)I

    move-result p1

    .line 483
    goto :goto_1

    .line 485
    .end local v2    # "adjustment":Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;, "Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment<Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    :cond_0
    goto :goto_0

    .line 487
    :cond_1
    :goto_1
    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-super/range {v3 .. v8}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object v1

    return-object v1
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "internalName"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "modifiers"    # I

    .line 465
    iget-object v0, p0, Lnet/bytebuddy/asm/ModifierAdjustment$ModifierAdjustingClassVisitor;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lnet/bytebuddy/asm/ModifierAdjustment$ModifierAdjustingClassVisitor;->typeAdjustments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;

    .line 467
    .local v1, "adjustment":Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;, "Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment<Lnet/bytebuddy/description/type/TypeDescription;>;"
    iget-object v2, p0, Lnet/bytebuddy/asm/ModifierAdjustment$ModifierAdjustingClassVisitor;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1, v2}, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 468
    invoke-virtual {v1, p4}, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;->resolve(I)I

    move-result p4

    .line 469
    goto :goto_1

    .line 471
    .end local v1    # "adjustment":Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;, "Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment<Lnet/bytebuddy/description/type/TypeDescription;>;"
    :cond_0
    goto :goto_0

    .line 473
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 474
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 9
    .param p1, "modifiers"    # I
    .param p2, "internalName"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exception"    # [Ljava/lang/String;

    .line 492
    iget-object v0, p0, Lnet/bytebuddy/asm/ModifierAdjustment$ModifierAdjustingClassVisitor;->methods:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription;

    .line 493
    .local v0, "methodDescription":Lnet/bytebuddy/description/method/MethodDescription;
    if-eqz v0, :cond_1

    .line 494
    iget-object v1, p0, Lnet/bytebuddy/asm/ModifierAdjustment$ModifierAdjustingClassVisitor;->methodAdjustments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;

    .line 495
    .local v2, "adjustment":Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;, "Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment<Lnet/bytebuddy/description/method/MethodDescription;>;"
    invoke-virtual {v2, v0}, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 496
    invoke-virtual {v2, p1}, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;->resolve(I)I

    move-result p1

    .line 497
    goto :goto_1

    .line 499
    .end local v2    # "adjustment":Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;, "Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment<Lnet/bytebuddy/description/method/MethodDescription;>;"
    :cond_0
    goto :goto_0

    .line 501
    :cond_1
    :goto_1
    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-super/range {v3 .. v8}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v1

    return-object v1
.end method
