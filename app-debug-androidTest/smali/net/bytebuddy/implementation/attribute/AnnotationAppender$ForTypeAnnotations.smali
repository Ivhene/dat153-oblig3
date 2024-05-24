.class public Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;
.super Ljava/lang/Object;
.source "AnnotationAppender.java"

# interfaces
.implements Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForTypeAnnotations"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
        "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final COMPONENT_TYPE_PATH:C = '['

.field private static final EMPTY_TYPE_PATH:Ljava/lang/String; = ""

.field private static final INDEXED_TYPE_DELIMITER:C = ';'

.field private static final INNER_CLASS_PATH:C = '.'

.field private static final SUPER_CLASS_INDEX:I = -0x1

.field public static final VARIABLE_ON_INVOKEABLE:Z = false

.field public static final VARIABLE_ON_TYPE:Z = true

.field private static final WILDCARD_TYPE_PATH:C = '*'


# instance fields
.field private final annotationAppender:Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

.field private final annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

.field private final typePath:Ljava/lang/String;

.field private final typeReference:I


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ILjava/lang/String;)V
    .locals 0
    .param p1, "annotationAppender"    # Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .param p2, "annotationValueFilter"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;
    .param p3, "typeReference"    # I
    .param p4, "typePath"    # Ljava/lang/String;

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    iput-object p1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationAppender:Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    .line 493
    iput-object p2, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    .line 494
    iput p3, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typeReference:I

    .line 495
    iput-object p4, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typePath:Ljava/lang/String;

    .line 496
    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;Lnet/bytebuddy/jar/asm/TypeReference;)V
    .locals 2
    .param p1, "annotationAppender"    # Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .param p2, "annotationValueFilter"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;
    .param p3, "typeReference"    # Lnet/bytebuddy/jar/asm/TypeReference;

    .line 480
    invoke-virtual {p3}, Lnet/bytebuddy/jar/asm/TypeReference;->getValue()I

    move-result v0

    const-string v1, ""

    invoke-direct {p0, p1, p2, v0, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ILjava/lang/String;)V

    .line 481
    return-void
.end method

.method private apply(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/lang/String;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .locals 5
    .param p1, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .param p2, "typePath"    # Ljava/lang/String;

    .line 724
    iget-object v0, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationAppender:Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    .line 725
    .local v0, "annotationAppender":Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 726
    .local v2, "annotationDescription":Lnet/bytebuddy/description/annotation/AnnotationDescription;
    iget-object v3, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    iget v4, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typeReference:I

    invoke-interface {v0, v2, v3, v4, p2}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;->append(Lnet/bytebuddy/description/annotation/AnnotationDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ILjava/lang/String;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object v0

    .line 727
    .end local v2    # "annotationDescription":Lnet/bytebuddy/description/annotation/AnnotationDescription;
    goto :goto_0

    .line 728
    :cond_0
    return-object v0
.end method

.method public static ofExceptionType(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;I)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;
    .locals 2
    .param p0, "annotationAppender"    # Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .param p1, "annotationValueFilter"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;",
            "I)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            ">;"
        }
    .end annotation

    .line 573
    new-instance v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    invoke-static {p2}, Lnet/bytebuddy/jar/asm/TypeReference;->newExceptionReference(I)Lnet/bytebuddy/jar/asm/TypeReference;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;Lnet/bytebuddy/jar/asm/TypeReference;)V

    return-object v0
.end method

.method public static ofFieldType(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;
    .locals 2
    .param p0, "annotationAppender"    # Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .param p1, "annotationValueFilter"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;",
            ")",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            ">;"
        }
    .end annotation

    .line 533
    new-instance v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    const/16 v1, 0x13

    invoke-static {v1}, Lnet/bytebuddy/jar/asm/TypeReference;->newTypeReference(I)Lnet/bytebuddy/jar/asm/TypeReference;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;Lnet/bytebuddy/jar/asm/TypeReference;)V

    return-object v0
.end method

.method public static ofInterfaceType(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;I)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;
    .locals 2
    .param p0, "annotationAppender"    # Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .param p1, "annotationValueFilter"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;",
            "I)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            ">;"
        }
    .end annotation

    .line 521
    new-instance v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    invoke-static {p2}, Lnet/bytebuddy/jar/asm/TypeReference;->newSuperTypeReference(I)Lnet/bytebuddy/jar/asm/TypeReference;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;Lnet/bytebuddy/jar/asm/TypeReference;)V

    return-object v0
.end method

.method public static ofMethodParameterType(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;I)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;
    .locals 2
    .param p0, "annotationAppender"    # Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .param p1, "annotationValueFilter"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;",
            "I)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            ">;"
        }
    .end annotation

    .line 559
    new-instance v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    invoke-static {p2}, Lnet/bytebuddy/jar/asm/TypeReference;->newFormalParameterReference(I)Lnet/bytebuddy/jar/asm/TypeReference;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;Lnet/bytebuddy/jar/asm/TypeReference;)V

    return-object v0
.end method

.method public static ofMethodReturnType(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;
    .locals 2
    .param p0, "annotationAppender"    # Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .param p1, "annotationValueFilter"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;",
            ")",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            ">;"
        }
    .end annotation

    .line 545
    new-instance v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    const/16 v1, 0x14

    invoke-static {v1}, Lnet/bytebuddy/jar/asm/TypeReference;->newTypeReference(I)Lnet/bytebuddy/jar/asm/TypeReference;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;Lnet/bytebuddy/jar/asm/TypeReference;)V

    return-object v0
.end method

.method public static ofReceiverType(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;
    .locals 2
    .param p0, "annotationAppender"    # Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .param p1, "annotationValueFilter"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;",
            ")",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            ">;"
        }
    .end annotation

    .line 585
    new-instance v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    const/16 v1, 0x15

    invoke-static {v1}, Lnet/bytebuddy/jar/asm/TypeReference;->newTypeReference(I)Lnet/bytebuddy/jar/asm/TypeReference;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;Lnet/bytebuddy/jar/asm/TypeReference;)V

    return-object v0
.end method

.method public static ofSuperClass(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;
    .locals 2
    .param p0, "annotationAppender"    # Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .param p1, "annotationValueFilter"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;",
            ")",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            ">;"
        }
    .end annotation

    .line 507
    new-instance v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    const/4 v1, -0x1

    invoke-static {v1}, Lnet/bytebuddy/jar/asm/TypeReference;->newSuperTypeReference(I)Lnet/bytebuddy/jar/asm/TypeReference;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;Lnet/bytebuddy/jar/asm/TypeReference;)V

    return-object v0
.end method

.method public static ofTypeVariable(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ZILjava/util/List;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .locals 11
    .param p0, "annotationAppender"    # Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .param p1, "annotationValueFilter"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;
    .param p2, "variableOnType"    # Z
    .param p3, "subListIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;",
            "ZI",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;"
        }
    .end annotation

    .line 619
    .local p4, "typeVariables":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/type/TypeDescription$Generic;>;"
    move v0, p3

    .line 620
    .local v0, "typeVariableIndex":I
    if-eqz p2, :cond_0

    .line 621
    const/4 v1, 0x0

    .line 622
    .local v1, "variableBaseReference":I
    const/16 v2, 0x11

    .local v2, "variableBoundBaseBase":I
    goto :goto_0

    .line 624
    .end local v1    # "variableBaseReference":I
    .end local v2    # "variableBoundBaseBase":I
    :cond_0
    const/4 v1, 0x1

    .line 625
    .restart local v1    # "variableBaseReference":I
    const/16 v2, 0x12

    .line 627
    .restart local v2    # "variableBoundBaseBase":I
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p4, p3, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 628
    .local v4, "typeVariable":Lnet/bytebuddy/description/type/TypeDescription$Generic;
    invoke-static {v1, v0}, Lnet/bytebuddy/jar/asm/TypeReference;->newTypeParameterReference(II)Lnet/bytebuddy/jar/asm/TypeReference;

    move-result-object v5

    invoke-virtual {v5}, Lnet/bytebuddy/jar/asm/TypeReference;->getValue()I

    move-result v5

    .line 629
    .local v5, "typeReference":I
    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v6

    invoke-interface {v6}, Lnet/bytebuddy/description/annotation/AnnotationList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 630
    .local v7, "annotationDescription":Lnet/bytebuddy/description/annotation/AnnotationDescription;
    const-string v8, ""

    invoke-interface {p0, v7, p1, v5, v8}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;->append(Lnet/bytebuddy/description/annotation/AnnotationDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ILjava/lang/String;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object p0

    .line 631
    .end local v7    # "annotationDescription":Lnet/bytebuddy/description/annotation/AnnotationDescription;
    goto :goto_2

    .line 632
    :cond_1
    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getUpperBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lnet/bytebuddy/description/type/TypeList$Generic;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    move-result-object v6

    invoke-virtual {v6}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->isTypeVariable()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getUpperBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v6

    invoke-interface {v6, v7}, Lnet/bytebuddy/description/type/TypeList$Generic;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v7, 0x1

    :cond_2
    move v6, v7

    .line 635
    .local v6, "boundIndex":I
    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getUpperBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v7

    invoke-interface {v7}, Lnet/bytebuddy/description/type/TypeList$Generic;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 636
    .local v8, "typeBound":Lnet/bytebuddy/description/type/TypeDescription$Generic;
    new-instance v9, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    add-int/lit8 v10, v6, 0x1

    .line 638
    .end local v6    # "boundIndex":I
    .local v10, "boundIndex":I
    invoke-static {v2, v0, v6}, Lnet/bytebuddy/jar/asm/TypeReference;->newTypeParameterBoundReference(III)Lnet/bytebuddy/jar/asm/TypeReference;

    move-result-object v6

    invoke-direct {v9, p0, p1, v6}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;Lnet/bytebuddy/jar/asm/TypeReference;)V

    .line 636
    invoke-interface {v8, v9}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v6

    move-object p0, v6

    check-cast p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    .line 639
    .end local v8    # "typeBound":Lnet/bytebuddy/description/type/TypeDescription$Generic;
    move v6, v10

    goto :goto_3

    .line 640
    .end local v10    # "boundIndex":I
    .restart local v6    # "boundIndex":I
    :cond_3
    nop

    .end local v4    # "typeVariable":Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .end local v5    # "typeReference":I
    .end local v6    # "boundIndex":I
    add-int/lit8 v0, v0, 0x1

    .line 641
    goto/16 :goto_1

    .line 642
    :cond_4
    return-object p0
.end method

.method public static ofTypeVariable(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ZLjava/util/List;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .locals 1
    .param p0, "annotationAppender"    # Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .param p1, "annotationValueFilter"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;
    .param p2, "variableOnType"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;",
            "Z",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/implementation/attribute/AnnotationAppender;"
        }
    .end annotation

    .line 601
    .local p3, "typeVariables":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/type/TypeDescription$Generic;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->ofTypeVariable(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ZILjava/util/List;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typeReference:I

    check-cast p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    iget v3, p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typeReference:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typePath:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationAppender:Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    iget-object v3, p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationAppender:Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    iget-object p1, p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationAppender:Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typeReference:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 409
    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object p1

    return-object p1
.end method

.method public onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .locals 7
    .param p1, "genericArray"    # Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 649
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    iget-object v2, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typePath:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->apply(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/lang/String;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    iget v4, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typeReference:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    return-object v0
.end method

.method public bridge synthetic onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 409
    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object p1

    return-object p1
.end method

.method public onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .locals 8
    .param p1, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 703
    .local v0, "typePath":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getInnerClassCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 704
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 703
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 706
    .end local v1    # "index":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->apply(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/lang/String;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object v1

    .line 707
    .local v1, "annotationAppender":Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 708
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    new-instance v3, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    iget-object v4, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    iget v5, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typeReference:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v1, v4, v5, v6}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    .line 713
    :cond_1
    return-object v1
.end method

.method public bridge synthetic onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 409
    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object p1

    return-object p1
.end method

.method public onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .locals 11
    .param p1, "parameterizedType"    # Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 670
    .local v0, "typePath":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getInnerClassCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 671
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 670
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 673
    .end local v1    # "index":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->apply(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/lang/String;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object v1

    .line 674
    .local v1, "annotationAppender":Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getOwnerType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    .line 675
    .local v2, "ownerType":Lnet/bytebuddy/description/type/TypeDescription$Generic;
    if-eqz v2, :cond_1

    .line 676
    new-instance v3, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    iget-object v4, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    iget v5, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typeReference:I

    iget-object v6, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typePath:Ljava/lang/String;

    invoke-direct {v3, v1, v4, v5, v6}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    .line 681
    :cond_1
    const/4 v3, 0x0

    .line 682
    .local v3, "index":I
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getTypeArguments()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeList$Generic;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 683
    .local v5, "typeArgument":Lnet/bytebuddy/description/type/TypeDescription$Generic;
    new-instance v6, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    iget-object v7, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    iget v8, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typeReference:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 686
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    .end local v3    # "index":I
    .local v10, "index":I
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v9, 0x3b

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v1, v7, v8, v3}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ILjava/lang/String;)V

    .line 683
    invoke-interface {v5, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    .line 687
    .end local v5    # "typeArgument":Lnet/bytebuddy/description/type/TypeDescription$Generic;
    move v3, v10

    goto :goto_1

    .line 688
    .end local v10    # "index":I
    .restart local v3    # "index":I
    :cond_2
    return-object v1
.end method

.method public bridge synthetic onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 409
    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object p1

    return-object p1
.end method

.method public onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .locals 1
    .param p1, "typeVariable"    # Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 695
    iget-object v0, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typePath:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->apply(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/lang/String;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 409
    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object p1

    return-object p1
.end method

.method public onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .locals 8
    .param p1, "wildcard"    # Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 659
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getLowerBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    .line 660
    .local v0, "lowerBounds":Lnet/bytebuddy/description/type/TypeList$Generic;
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getUpperBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList$Generic;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_0

    .line 662
    :cond_0
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    :goto_0
    new-instance v2, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;

    iget-object v3, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typePath:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->apply(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/lang/String;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->annotationValueFilter:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    iget v5, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typeReference:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->typePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    .line 660
    return-object v1
.end method
