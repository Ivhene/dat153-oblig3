.class public Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTypeAnnotator;
.super Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;
.source "ValueAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ValueTypeAnnotator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;


# direct methods
.method protected constructor <init>(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 497
    iput-object p1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTypeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 498
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 499
    return-void
.end method

.method private replaceWithNewAnnoInSpecialCases(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 6
    .param p1, "atm"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 534
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTypeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 535
    .local v0, "anno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 539
    :cond_0
    const-string v1, "org.checkerframework.common.value.qual.IntVal"

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0xa

    if-eqz v1, :cond_2

    .line 540
    invoke-static {v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getIntValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 541
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 542
    iget-object v2, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTypeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-static {v1}, Lorg/checkerframework/common/value/util/Range;->create(Ljava/util/Collection;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntRangeAnnotation(Lorg/checkerframework/common/value/util/Range;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 544
    .end local v1    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    goto/16 :goto_3

    :cond_2
    const-string v1, "org.checkerframework.common.value.qual.ArrayLen"

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 545
    invoke-static {v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getArrayLength(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 546
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 547
    iget-object v2, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTypeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->BOTTOMVAL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_0

    .line 548
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_4

    .line 549
    iget-object v2, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTypeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->BOTTOMVAL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_0

    .line 550
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_5

    .line 551
    iget-object v2, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTypeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-static {v1}, Lorg/checkerframework/common/value/util/Range;->create(Ljava/util/Collection;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createArrayLenRangeAnnotation(Lorg/checkerframework/common/value/util/Range;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 553
    .end local v1    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_5
    :goto_0
    goto/16 :goto_3

    :cond_6
    const-string v1, "org.checkerframework.common.value.qual.IntRange"

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 555
    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTypeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v1, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getFromValueFromIntRange(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)J

    move-result-wide v1

    .line 556
    .local v1, "from":J
    iget-object v3, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTypeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v3, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getToValueFromIntRange(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)J

    move-result-wide v3

    .line 558
    .local v3, "to":J
    cmp-long v5, v1, v3

    if-lez v5, :cond_7

    .line 563
    iget-object v5, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTypeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v5, v5, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->BOTTOMVAL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_1

    .line 568
    :cond_7
    iget-object v5, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTypeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-static {v5, v1, v2, v3, v4}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->access$200(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;JJ)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 570
    .end local v1    # "from":J
    .end local v3    # "to":J
    :goto_1
    goto/16 :goto_3

    :cond_8
    const-string v1, "org.checkerframework.common.value.qual.ArrayLenRange"

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    .line 571
    const-string v1, "from"

    const-class v2, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 572
    .local v1, "from":I
    const-string v2, "to"

    const-class v5, Ljava/lang/Integer;

    invoke-static {v0, v2, v5, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 573
    .local v2, "to":I
    if-le v1, v2, :cond_9

    .line 578
    iget-object v3, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTypeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v3, v3, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->BOTTOMVAL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_2

    .line 579
    :cond_9
    if-gez v1, :cond_a

    .line 582
    iget-object v4, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTypeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v4, v3, v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createArrayLenRangeAnnotation(II)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 584
    .end local v1    # "from":I
    .end local v2    # "to":I
    :cond_a
    :goto_2
    goto :goto_3

    :cond_b
    const-string v1, "org.checkerframework.common.value.qual.StringVal"

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 587
    invoke-static {v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getStringValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 589
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_c

    .line 590
    invoke-static {v1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getLengthsForStringValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 591
    .local v2, "lengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTypeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v3, v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createArrayLenAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 594
    .end local v1    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "lengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_c
    goto :goto_3

    .line 598
    :cond_d
    const-class v1, Ljava/lang/Object;

    .line 599
    const-string v4, "value"

    invoke-static {v0, v4, v1, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v1

    .line 600
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_e

    .line 601
    iget-object v2, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTypeAnnotator;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 604
    .end local v1    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_e
    :goto_3
    return-void

    .line 536
    :cond_f
    :goto_4
    return-void
.end method


# virtual methods
.method protected bridge synthetic scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 494
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTypeAnnotator;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 503
    invoke-direct {p0, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTypeAnnotator;->replaceWithNewAnnoInSpecialCases(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 504
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method
