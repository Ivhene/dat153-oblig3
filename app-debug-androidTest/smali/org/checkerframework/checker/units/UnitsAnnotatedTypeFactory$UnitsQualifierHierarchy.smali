.class public Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsQualifierHierarchy;
.super Lorg/checkerframework/framework/util/GraphQualifierHierarchy;
.source "UnitsAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UnitsQualifierHierarchy"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;
    .param p2, "mgf"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;
    .param p3, "unitsBottom"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 545
    iput-object p1, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsQualifierHierarchy;->this$0:Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;

    .line 546
    invoke-direct {p0, p2, p3}, Lorg/checkerframework/framework/util/GraphQualifierHierarchy;-><init>(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 547
    return-void
.end method


# virtual methods
.method public isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "subAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "superAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 551
    invoke-static {p2, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-static {p2, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->sameElementValues(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0

    .line 554
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsQualifierHierarchy;->this$0:Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;

    invoke-static {v0, p2}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->access$300(Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object p2

    .line 555
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsQualifierHierarchy;->this$0:Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;

    invoke-static {v0, p1}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->access$300(Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object p1

    .line 557
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/util/GraphQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method public leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 572
    invoke-static {p1}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->getPrefix(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/units/qual/Prefix;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/checker/units/qual/Prefix;->one:Lorg/checkerframework/checker/units/qual/Prefix;

    if-ne v0, v1, :cond_0

    .line 573
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsQualifierHierarchy;->this$0:Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;

    invoke-static {v0, p1}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->access$300(Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object p1

    .line 575
    :cond_0
    invoke-static {p2}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->getPrefix(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/units/qual/Prefix;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/checker/units/qual/Prefix;->one:Lorg/checkerframework/checker/units/qual/Prefix;

    if-ne v0, v1, :cond_1

    .line 576
    iget-object v0, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsQualifierHierarchy;->this$0:Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;

    invoke-static {v0, p2}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->access$300(Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object p2

    .line 582
    :cond_1
    invoke-static {p1, p2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 584
    invoke-static {p1, p2}, Lorg/checkerframework/javacutil/AnnotationUtils;->sameElementValues(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 586
    move-object v0, p1

    .local v0, "result":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_1

    .line 592
    .end local v0    # "result":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    invoke-static {p1}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->hasNoPrefix(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 594
    .local v0, "a1Prefixed":Z
    invoke-static {p2}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->hasNoPrefix(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 599
    .local v1, "a2Prefixed":Z
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 601
    iget-object v2, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsQualifierHierarchy;->this$0:Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;

    invoke-static {v2, p1}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->access$300(Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsQualifierHierarchy;->findLub(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    move-object v0, v2

    .local v2, "result":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    .line 602
    .end local v2    # "result":Ljavax/lang/model/element/AnnotationMirror;
    :cond_3
    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 604
    invoke-virtual {p0, p2, p1}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsQualifierHierarchy;->findLub(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    move-object v0, v2

    .restart local v2    # "result":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    .line 607
    .end local v2    # "result":Ljavax/lang/model/element/AnnotationMirror;
    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory$UnitsQualifierHierarchy;->findLub(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    move-object v0, v2

    .line 609
    .end local v1    # "a2Prefixed":Z
    .local v0, "result":Ljavax/lang/model/element/AnnotationMirror;
    :goto_0
    goto :goto_1

    .line 612
    .end local v0    # "result":Ljavax/lang/model/element/AnnotationMirror;
    :cond_5
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/util/GraphQualifierHierarchy;->leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 615
    .restart local v0    # "result":Ljavax/lang/model/element/AnnotationMirror;
    :goto_1
    return-object v0
.end method
