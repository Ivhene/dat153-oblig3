.class final Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;
.super Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;
.source "ValueAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ValueQualifierHierarchy"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V
    .locals 0
    .param p2, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 611
    iput-object p1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 612
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;-><init>(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V

    .line 613
    return-void
.end method

.method private glbOfStringVal(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 7
    .param p1, "stringValAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "otherAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 625
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getStringValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 626
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "org.checkerframework.common.value.qual.ArrayLenRange"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "org.checkerframework.common.value.qual.StringVal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_2
    const-string v2, "org.checkerframework.common.value.qual.ArrayLen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 655
    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->BOTTOMVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v1

    .line 645
    :pswitch_0
    invoke-static {p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    .line 646
    .local v1, "otherRange":Lorg/checkerframework/common/value/util/Range;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 647
    .local v2, "range":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 648
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v1, v5, v6}, Lorg/checkerframework/common/value/util/Range;->contains(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 649
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    .end local v4    # "s":Ljava/lang/String;
    :cond_1
    goto :goto_2

    .line 652
    :cond_2
    move-object v0, v2

    .line 653
    goto :goto_4

    .line 634
    .end local v1    # "otherRange":Lorg/checkerframework/common/value/util/Range;
    .end local v2    # "range":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1
    invoke-static {p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getArrayLength(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 635
    .local v1, "otherLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 636
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 637
    .restart local v4    # "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 638
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    .end local v4    # "s":Ljava/lang/String;
    :cond_3
    goto :goto_3

    .line 641
    :cond_4
    move-object v0, v2

    .line 642
    goto :goto_4

    .line 629
    .end local v1    # "otherLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_2
    invoke-static {p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getStringValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 630
    .local v1, "otherValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 631
    nop

    .line 658
    .end local v1    # "otherValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_4
    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v1, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createStringAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x10601bb6 -> :sswitch_2
        0x454d51d6 -> :sswitch_1
        0x79bc0f27 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private widenedRange(Lorg/checkerframework/common/value/util/Range;Lorg/checkerframework/common/value/util/Range;Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;
    .locals 16
    .param p1, "newRange"    # Lorg/checkerframework/common/value/util/Range;
    .param p2, "oldRange"    # Lorg/checkerframework/common/value/util/Range;
    .param p3, "lubRange"    # Lorg/checkerframework/common/value/util/Range;

    .line 710
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v0, :cond_f

    if-eqz v1, :cond_f

    invoke-virtual {v2, v1}, Lorg/checkerframework/common/value/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_5

    .line 715
    :cond_0
    iget-wide v3, v0, Lorg/checkerframework/common/value/util/Range;->from:J

    iget-wide v5, v1, Lorg/checkerframework/common/value/util/Range;->from:J

    cmp-long v3, v3, v5

    const-wide/16 v4, 0x7fff

    const-wide/16 v6, 0x7f

    if-ltz v3, :cond_4

    iget-wide v8, v0, Lorg/checkerframework/common/value/util/Range;->to:J

    iget-wide v10, v1, Lorg/checkerframework/common/value/util/Range;->to:J

    cmp-long v3, v8, v10

    if-ltz v3, :cond_4

    .line 716
    iget-wide v8, v2, Lorg/checkerframework/common/value/util/Range;->to:J

    .line 717
    .local v8, "max":J
    cmp-long v3, v8, v6

    if-gez v3, :cond_1

    .line 718
    const-wide/16 v3, 0x7f

    .end local v8    # "max":J
    .local v3, "max":J
    goto :goto_0

    .line 719
    .end local v3    # "max":J
    .restart local v8    # "max":J
    :cond_1
    cmp-long v3, v8, v4

    if-gez v3, :cond_2

    .line 720
    const-wide/16 v3, 0x7fff

    .end local v8    # "max":J
    .restart local v3    # "max":J
    goto :goto_0

    .line 721
    .end local v3    # "max":J
    .restart local v8    # "max":J
    :cond_2
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v8, v3

    if-gez v3, :cond_3

    .line 722
    const-wide/32 v3, 0x7fffffff

    .end local v8    # "max":J
    .restart local v3    # "max":J
    goto :goto_0

    .line 724
    .end local v3    # "max":J
    .restart local v8    # "max":J
    :cond_3
    const-wide v3, 0x7fffffffffffffffL

    .line 726
    .end local v8    # "max":J
    .restart local v3    # "max":J
    :goto_0
    iget-wide v5, v0, Lorg/checkerframework/common/value/util/Range;->from:J

    invoke-static {v5, v6, v3, v4}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v5

    return-object v5

    .line 731
    .end local v3    # "max":J
    :cond_4
    iget-wide v8, v0, Lorg/checkerframework/common/value/util/Range;->from:J

    iget-wide v10, v1, Lorg/checkerframework/common/value/util/Range;->from:J

    cmp-long v3, v8, v10

    const-wide/16 v8, -0x8000

    const-wide/16 v10, -0x80

    if-gtz v3, :cond_8

    iget-wide v12, v0, Lorg/checkerframework/common/value/util/Range;->to:J

    iget-wide v14, v1, Lorg/checkerframework/common/value/util/Range;->to:J

    cmp-long v3, v12, v14

    if-gtz v3, :cond_8

    .line 732
    iget-wide v3, v2, Lorg/checkerframework/common/value/util/Range;->from:J

    .line 733
    .local v3, "min":J
    cmp-long v5, v3, v10

    if-lez v5, :cond_5

    .line 734
    const-wide/16 v3, -0x80

    goto :goto_1

    .line 735
    :cond_5
    cmp-long v5, v3, v8

    if-lez v5, :cond_6

    .line 736
    const-wide/16 v3, -0x8000

    goto :goto_1

    .line 737
    :cond_6
    const-wide/32 v5, -0x80000000

    cmp-long v5, v3, v5

    if-lez v5, :cond_7

    .line 738
    const-wide/32 v3, -0x80000000

    goto :goto_1

    .line 740
    :cond_7
    const-wide/high16 v3, -0x8000000000000000L

    .line 742
    :goto_1
    iget-wide v5, v0, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v3, v4, v5, v6}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v5

    return-object v5

    .line 745
    .end local v3    # "min":J
    :cond_8
    const-wide/16 v12, -0x7f

    invoke-virtual {v2, v12, v13, v6, v7}, Lorg/checkerframework/common/value/util/Range;->isWithin(JJ)Z

    move-result v3

    if-nez v3, :cond_e

    .line 746
    const-wide/16 v6, 0x7e

    invoke-virtual {v2, v10, v11, v6, v7}, Lorg/checkerframework/common/value/util/Range;->isWithin(JJ)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_4

    .line 748
    :cond_9
    const-wide/16 v6, -0x7fff

    invoke-virtual {v2, v6, v7, v4, v5}, Lorg/checkerframework/common/value/util/Range;->isWithin(JJ)Z

    move-result v3

    if-nez v3, :cond_d

    .line 749
    const-wide/16 v3, 0x7ffe

    invoke-virtual {v2, v8, v9, v3, v4}, Lorg/checkerframework/common/value/util/Range;->isWithin(JJ)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_3

    .line 751
    :cond_a
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, 0x7fffffffffffffffL

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/checkerframework/common/value/util/Range;->isWithin(JJ)Z

    move-result v3

    if-nez v3, :cond_c

    .line 752
    const-wide/high16 v3, -0x8000000000000000L

    const-wide v5, 0x7ffffffffffffffeL

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/checkerframework/common/value/util/Range;->isWithin(JJ)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_2

    .line 755
    :cond_b
    sget-object v3, Lorg/checkerframework/common/value/util/Range;->EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v3

    .line 753
    :cond_c
    :goto_2
    sget-object v3, Lorg/checkerframework/common/value/util/Range;->INT_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v3

    .line 750
    :cond_d
    :goto_3
    sget-object v3, Lorg/checkerframework/common/value/util/Range;->SHORT_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v3

    .line 747
    :cond_e
    :goto_4
    sget-object v3, Lorg/checkerframework/common/value/util/Range;->BYTE_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v3

    .line 711
    :cond_f
    :goto_5
    return-object v2
.end method


# virtual methods
.method public greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 663
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    return-object p1

    .line 665
    :cond_0
    invoke-virtual {p0, p2, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    return-object p2

    .line 672
    :cond_1
    const-string v0, "org.checkerframework.common.value.qual.StringVal"

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 673
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->glbOfStringVal(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0

    .line 674
    :cond_2
    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 675
    invoke-direct {p0, p2, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->glbOfStringVal(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0

    .line 680
    :cond_3
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->BOTTOMVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0
.end method

.method public isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 10
    .param p1, "subAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "superAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 950
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-static {v0, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->access$000(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object p1

    .line 951
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-static {v0, p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->access$000(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object p2

    .line 952
    invoke-static {p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v0

    .line 953
    .local v0, "subQual":Ljava/lang/String;
    const-string v1, "org.checkerframework.common.value.qual.UnknownVal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 954
    iget-object v2, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-static {v2, p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->access$100(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object p2

    .line 956
    :cond_0
    invoke-static {p2}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v2

    .line 957
    .local v2, "superQual":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_11

    const-string v3, "org.checkerframework.common.value.qual.BottomVal"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_7

    .line 959
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_6

    .line 961
    :cond_2
    const-string v1, "org.checkerframework.common.value.qual.PolyValue"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 962
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 963
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 964
    return v5

    .line 965
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 967
    const-string v1, "org.checkerframework.common.value.qual.IntRange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "org.checkerframework.common.value.qual.ArrayLenRange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 973
    :cond_5
    const-class v1, Ljava/lang/Object;

    .line 974
    const-string v3, "value"

    invoke-static {p2, v3, v1, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v1

    .line 976
    .local v1, "superValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-class v5, Ljava/lang/Object;

    .line 977
    invoke-static {p1, v3, v5, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v3

    .line 979
    .local v3, "subValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    return v4

    .line 969
    .end local v1    # "superValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v3    # "subValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_6
    :goto_0
    invoke-static {p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    .line 970
    .local v1, "superRange":Lorg/checkerframework/common/value/util/Range;
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v3

    .line 971
    .local v3, "subRange":Lorg/checkerframework/common/value/util/Range;
    invoke-virtual {v1, v3}, Lorg/checkerframework/common/value/util/Range;->contains(Lorg/checkerframework/common/value/util/Range;)Z

    move-result v4

    return v4

    .line 982
    .end local v1    # "superRange":Lorg/checkerframework/common/value/util/Range;
    .end local v3    # "subRange":Lorg/checkerframework/common/value/util/Range;
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_8
    goto/16 :goto_1

    :sswitch_0
    const-string v3, "org.checkerframework.common.value.qual.DoubleValorg.checkerframework.common.value.qual.IntRange"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x3

    goto :goto_2

    :sswitch_1
    const-string v3, "org.checkerframework.common.value.qual.StringValorg.checkerframework.common.value.qual.ArrayLen"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x7

    goto :goto_2

    :sswitch_2
    const-string v3, "org.checkerframework.common.value.qual.ArrayLenorg.checkerframework.common.value.qual.StringVal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    goto :goto_2

    :sswitch_3
    const-string v3, "org.checkerframework.common.value.qual.StringValorg.checkerframework.common.value.qual.ArrayLenRange"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x6

    goto :goto_2

    :sswitch_4
    const-string v3, "org.checkerframework.common.value.qual.IntValorg.checkerframework.common.value.qual.IntRange"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x4

    goto :goto_2

    :sswitch_5
    const-string v3, "org.checkerframework.common.value.qual.ArrayLenRangeorg.checkerframework.common.value.qual.ArrayLen"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x2

    goto :goto_2

    :sswitch_6
    const-string v3, "org.checkerframework.common.value.qual.ArrayLenRangeorg.checkerframework.common.value.qual.StringVal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    goto :goto_2

    :sswitch_7
    const-string v3, "org.checkerframework.common.value.qual.DoubleValorg.checkerframework.common.value.qual.IntVal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v5

    goto :goto_2

    :sswitch_8
    const-string v3, "org.checkerframework.common.value.qual.ArrayLenorg.checkerframework.common.value.qual.ArrayLenRange"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x5

    goto :goto_2

    :sswitch_9
    const-string v3, "org.checkerframework.common.value.qual.IntRangeorg.checkerframework.common.value.qual.IntVal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v4

    goto :goto_2

    :goto_1
    const/4 v1, -0x1

    :goto_2
    const-wide/16 v6, 0xa

    packed-switch v1, :pswitch_data_0

    .line 1043
    return v5

    .line 1034
    :pswitch_0
    invoke-static {p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    .line 1035
    .local v1, "superRange2":Lorg/checkerframework/common/value/util/Range;
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getStringValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v3

    .line 1036
    .local v3, "subValues3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1037
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v1, v8, v9}, Lorg/checkerframework/common/value/util/Range;->contains(J)Z

    move-result v8

    if-nez v8, :cond_9

    .line 1038
    return v5

    .line 1040
    .end local v7    # "value":Ljava/lang/String;
    :cond_9
    goto :goto_3

    .line 1041
    :cond_a
    return v4

    .line 1022
    .end local v1    # "superRange2":Lorg/checkerframework/common/value/util/Range;
    .end local v3    # "subValues3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    invoke-static {p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getArrayLength(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 1023
    .local v1, "superIntValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getStringValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v3

    .line 1024
    .local v3, "subStringValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1025
    .restart local v7    # "value":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 1026
    return v5

    .line 1028
    .end local v7    # "value":Ljava/lang/String;
    :cond_b
    goto :goto_4

    .line 1029
    :cond_c
    return v4

    .line 1016
    .end local v1    # "superIntValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "subStringValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2
    invoke-static {p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getStringValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 1017
    .local v1, "superStringValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, ""

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v3, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getMaxLenValue(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_d

    goto :goto_5

    :cond_d
    move v4, v5

    :goto_5
    return v4

    .line 1004
    .end local v1    # "superStringValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    .line 1005
    .local v1, "subRange2":Lorg/checkerframework/common/value/util/Range;
    invoke-virtual {v1, v6, v7}, Lorg/checkerframework/common/value/util/Range;->isWiderThan(J)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1006
    return v5

    .line 1008
    :cond_e
    iget-object v3, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-static {v3, p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->access$800(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v3

    .line 1009
    .local v3, "superValues2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-class v4, Ljava/lang/Long;

    .line 1010
    invoke-static {v1, v4}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValuesFromRange(Lorg/checkerframework/common/value/util/Range;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 1011
    .local v4, "subValues2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    return v5

    .line 994
    .end local v1    # "subRange2":Lorg/checkerframework/common/value/util/Range;
    .end local v3    # "superValues2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v4    # "subValues2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :pswitch_4
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    .line 995
    .local v1, "subRange":Lorg/checkerframework/common/value/util/Range;
    invoke-virtual {v1, v6, v7}, Lorg/checkerframework/common/value/util/Range;->isWiderThan(J)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 996
    return v5

    .line 998
    :cond_f
    invoke-static {p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getDoubleValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v3

    .line 999
    .local v3, "superDoubleValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const-class v4, Ljava/lang/Double;

    .line 1000
    invoke-static {v1, v4}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValuesFromRange(Lorg/checkerframework/common/value/util/Range;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 1001
    .local v4, "subDoubleValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    return v5

    .line 989
    .end local v1    # "subRange":Lorg/checkerframework/common/value/util/Range;
    .end local v3    # "superDoubleValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v4    # "subDoubleValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    :pswitch_5
    invoke-static {p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    .line 990
    .local v1, "superRange":Lorg/checkerframework/common/value/util/Range;
    iget-object v3, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-static {v3, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->access$800(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v3

    .line 991
    .local v3, "subLongValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v3}, Lorg/checkerframework/common/value/util/Range;->create(Ljava/util/Collection;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    .line 992
    .local v4, "subLongRange":Lorg/checkerframework/common/value/util/Range;
    invoke-virtual {v1, v4}, Lorg/checkerframework/common/value/util/Range;->contains(Lorg/checkerframework/common/value/util/Range;)Z

    move-result v5

    return v5

    .line 984
    .end local v1    # "superRange":Lorg/checkerframework/common/value/util/Range;
    .end local v3    # "subLongValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v4    # "subLongRange":Lorg/checkerframework/common/value/util/Range;
    :pswitch_6
    invoke-static {p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getDoubleValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 985
    .local v1, "superValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    iget-object v3, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-static {p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getIntValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->access$700(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 986
    .local v3, "subValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {v1, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    return v4

    .line 960
    .end local v1    # "superValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v3    # "subValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    :cond_10
    :goto_6
    return v5

    .line 958
    :cond_11
    :goto_7
    return v4

    :sswitch_data_0
    .sparse-switch
        -0x6a63f65c -> :sswitch_9
        -0x4d712423 -> :sswitch_8
        -0x4528206a -> :sswitch_7
        -0x2afa2903 -> :sswitch_6
        0x47ed5af -> :sswitch_5
        0x120805dc -> :sswitch_4
        0x43c341fd -> :sswitch_3
        0x44bee98c -> :sswitch_2
        0x480dfb20 -> :sswitch_1
        0x64260872 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 23
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 767
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 769
    const/4 v2, 0x0

    return-object v2

    .line 772
    :cond_0
    iget-object v2, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-object/from16 v3, p1

    invoke-static {v2, v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->access$000(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 773
    .end local p1    # "a1":Ljavax/lang/model/element/AnnotationMirror;
    .local v2, "a1":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v3, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-static {v3, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->access$000(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 775
    .end local p2    # "a2":Ljavax/lang/model/element/AnnotationMirror;
    .local v1, "a2":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 776
    return-object v1

    .line 777
    :cond_1
    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 778
    return-object v2

    .line 780
    :cond_2
    invoke-static {v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v3

    .line 781
    .local v3, "qual1":Ljava/lang/String;
    invoke-static {v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v4

    .line 783
    .local v4, "qual2":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x3

    const-string v10, "org.checkerframework.common.value.qual.IntRange"

    const-string v11, "org.checkerframework.common.value.qual.ArrayLenRange"

    const-string v12, "org.checkerframework.common.value.qual.StringVal"

    const-string v13, "org.checkerframework.common.value.qual.ArrayLen"

    const-string v14, "org.checkerframework.common.value.qual.IntVal"

    const/4 v15, -0x1

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    .line 785
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_3
    goto :goto_0

    :sswitch_0
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v15, v8

    goto :goto_0

    :sswitch_1
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v15, v6

    goto :goto_0

    :sswitch_2
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v15, 0x4

    goto :goto_0

    :sswitch_3
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v15, v9

    goto :goto_0

    :sswitch_4
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v15, v7

    :goto_0
    packed-switch v15, :pswitch_data_0

    .line 818
    const-class v5, Ljava/lang/Object;

    .line 819
    const-string v7, "value"

    invoke-static {v2, v7, v5, v6}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v5

    .line 821
    .local v5, "object1Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-class v8, Ljava/lang/Object;

    .line 822
    invoke-static {v1, v7, v8, v6}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v6

    .line 824
    .local v6, "object2Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    .line 825
    .local v8, "newObjectValues":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Object;>;"
    invoke-virtual {v8, v5}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 826
    invoke-virtual {v8, v6}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 828
    invoke-virtual {v8}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 829
    iget-object v7, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v7, v7, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->BOTTOMVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v7

    .line 811
    .end local v5    # "object1Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v6    # "object2Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v8    # "newObjectValues":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Object;>;"
    :pswitch_0
    invoke-static {v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getStringValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v5

    .line 812
    .local v5, "string1Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getStringValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v6

    .line 813
    .local v6, "string2Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .local v7, "newStringValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 815
    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 816
    iget-object v8, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v8, v7}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createStringAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    return-object v8

    .line 804
    .end local v5    # "string1Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "string2Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "newStringValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    invoke-static {v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getArrayLength(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v5

    .line 805
    .local v5, "al1Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getArrayLength(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v6

    .line 806
    .local v6, "al2Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 807
    .local v7, "newValuesAL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v7, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 808
    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 809
    iget-object v8, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v8, v7}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createArrayLenAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    return-object v8

    .line 797
    .end local v5    # "al1Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "al2Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "newValuesAL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :pswitch_2
    invoke-static {v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getIntValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v5

    .line 798
    .local v5, "a1Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getIntValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v6

    .line 799
    .local v6, "a2Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 800
    .local v7, "newValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v7, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 801
    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 802
    iget-object v8, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v8, v7}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntValAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    return-object v8

    .line 793
    .end local v5    # "a1Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v6    # "a2Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v7    # "newValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :pswitch_3
    invoke-static {v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v5

    .line 794
    .local v5, "range1":Lorg/checkerframework/common/value/util/Range;
    invoke-static {v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v6

    .line 795
    .local v6, "range2":Lorg/checkerframework/common/value/util/Range;
    iget-object v7, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v5, v6}, Lorg/checkerframework/common/value/util/Range;->union(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createArrayLenRangeAnnotation(Lorg/checkerframework/common/value/util/Range;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v7

    return-object v7

    .line 788
    .end local v5    # "range1":Lorg/checkerframework/common/value/util/Range;
    .end local v6    # "range2":Lorg/checkerframework/common/value/util/Range;
    :pswitch_4
    invoke-static {v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v5

    .line 789
    .local v5, "intrange1":Lorg/checkerframework/common/value/util/Range;
    invoke-static {v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v6

    .line 790
    .local v6, "intrange2":Lorg/checkerframework/common/value/util/Range;
    iget-object v7, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v5, v6}, Lorg/checkerframework/common/value/util/Range;->union(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntRangeAnnotation(Lorg/checkerframework/common/value/util/Range;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v7

    return-object v7

    .line 831
    .local v5, "object1Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v6, "object2Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v8    # "newObjectValues":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Object;>;"
    :cond_4
    invoke-virtual {v8}, Ljava/util/TreeSet;->size()I

    move-result v9

    const/16 v10, 0xa

    if-le v9, v10, :cond_5

    .line 832
    iget-object v7, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v7, v7, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v7

    .line 834
    :cond_5
    new-instance v9, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v10, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 836
    invoke-static {v10}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->access$300(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v10

    invoke-interface {v2}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/CharSequence;)V

    .line 837
    .local v9, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 838
    .local v10, "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {v9, v7, v10}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/util/List;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 839
    invoke-virtual {v9}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v7

    return-object v7

    .line 847
    .end local v5    # "object1Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v6    # "object2Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v8    # "newObjectValues":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Object;>;"
    .end local v9    # "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    .end local v10    # "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_6
    const/4 v5, 0x0

    .line 848
    .local v5, "arrayLenAnno":Ljavax/lang/model/element/AnnotationMirror;
    const/16 v16, 0x0

    .line 849
    .local v16, "arrayLenRangeAnno":Ljavax/lang/model/element/AnnotationMirror;
    const/16 v17, 0x0

    .line 850
    .local v17, "stringValAnno":Ljavax/lang/model/element/AnnotationMirror;
    const/16 v18, 0x0

    .line 851
    .local v18, "intValAnno":Ljavax/lang/model/element/AnnotationMirror;
    const/16 v19, 0x0

    .line 852
    .local v19, "intRangeAnno":Ljavax/lang/model/element/AnnotationMirror;
    const/16 v20, 0x0

    .line 854
    .local v20, "doubleValAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v21

    const/16 v22, 0x5

    const-string v6, "org.checkerframework.common.value.qual.DoubleVal"

    sparse-switch v21, :sswitch_data_1

    :cond_7
    goto :goto_1

    :sswitch_5
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    const/16 v21, 0x4

    goto :goto_2

    :sswitch_6
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    const/16 v21, 0x1

    goto :goto_2

    :sswitch_7
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    move/from16 v21, v7

    goto :goto_2

    :sswitch_8
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    move/from16 v21, v22

    goto :goto_2

    :sswitch_9
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    move/from16 v21, v8

    goto :goto_2

    :sswitch_a
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    move/from16 v21, v9

    goto :goto_2

    :goto_1
    move/from16 v21, v15

    :goto_2
    packed-switch v21, :pswitch_data_1

    goto :goto_3

    .line 871
    :pswitch_5
    move-object/from16 v20, v2

    .line 872
    goto :goto_3

    .line 868
    :pswitch_6
    move-object/from16 v19, v2

    .line 869
    goto :goto_3

    .line 865
    :pswitch_7
    move-object/from16 v18, v2

    .line 866
    goto :goto_3

    .line 862
    :pswitch_8
    move-object/from16 v17, v2

    .line 863
    goto :goto_3

    .line 859
    :pswitch_9
    move-object/from16 v16, v2

    .line 860
    goto :goto_3

    .line 856
    :pswitch_a
    move-object v5, v2

    .line 857
    nop

    .line 877
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v21

    sparse-switch v21, :sswitch_data_2

    :cond_8
    goto :goto_4

    :sswitch_b
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x4

    goto :goto_5

    :sswitch_c
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    goto :goto_5

    :sswitch_d
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move v6, v7

    goto :goto_5

    :sswitch_e
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move/from16 v6, v22

    goto :goto_5

    :sswitch_f
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move v6, v8

    goto :goto_5

    :sswitch_10
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move v6, v9

    goto :goto_5

    :goto_4
    move v6, v15

    :goto_5
    packed-switch v6, :pswitch_data_2

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    goto :goto_6

    .line 894
    :pswitch_b
    move-object/from16 v20, v1

    .line 895
    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    goto :goto_6

    .line 891
    :pswitch_c
    move-object/from16 v19, v1

    .line 892
    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    goto :goto_6

    .line 888
    :pswitch_d
    move-object/from16 v18, v1

    .line 889
    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    goto :goto_6

    .line 885
    :pswitch_e
    move-object/from16 v17, v1

    .line 886
    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    goto :goto_6

    .line 882
    :pswitch_f
    move-object/from16 v16, v1

    .line 883
    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    goto :goto_6

    .line 879
    :pswitch_10
    move-object v5, v1

    .line 880
    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    .line 901
    .end local v16    # "arrayLenRangeAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v17    # "stringValAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v18    # "intValAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v19    # "intRangeAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v20    # "doubleValAnno":Ljavax/lang/model/element/AnnotationMirror;
    .local v6, "arrayLenRangeAnno":Ljavax/lang/model/element/AnnotationMirror;
    .local v7, "stringValAnno":Ljavax/lang/model/element/AnnotationMirror;
    .local v8, "intValAnno":Ljavax/lang/model/element/AnnotationMirror;
    .local v9, "intRangeAnno":Ljavax/lang/model/element/AnnotationMirror;
    .local v10, "doubleValAnno":Ljavax/lang/model/element/AnnotationMirror;
    :goto_6
    if-eqz v5, :cond_9

    if-eqz v6, :cond_9

    .line 902
    iget-object v11, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 903
    invoke-virtual {v11, v5}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->convertArrayLenToArrayLenRange(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v11

    .line 902
    invoke-virtual {v0, v6, v11}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v11

    return-object v11

    .line 904
    :cond_9
    if-eqz v7, :cond_a

    if-eqz v5, :cond_a

    .line 905
    iget-object v11, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-static {v11, v7}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->access$400(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v11

    invoke-virtual {v0, v5, v11}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v11

    return-object v11

    .line 906
    :cond_a
    if-eqz v7, :cond_b

    if-eqz v6, :cond_b

    .line 907
    iget-object v11, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 908
    invoke-static {v11, v7}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->access$500(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v11

    .line 907
    invoke-virtual {v0, v6, v11}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v11

    return-object v11

    .line 917
    :cond_b
    if-eqz v10, :cond_e

    .line 918
    if-eqz v9, :cond_c

    .line 919
    iget-object v11, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v11, v9}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->convertIntRangeToIntVal(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    .line 920
    const-string v11, "org.checkerframework.common.value.qual.UnknownVal"

    invoke-static {v8, v11}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 921
    const/4 v8, 0x0

    .line 924
    :cond_c
    if-eqz v8, :cond_d

    .line 926
    iget-object v11, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-static {v11, v8}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->access$600(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v11

    .line 927
    .local v11, "doubleValAnno2":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v0, v10, v11}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v12

    return-object v12

    .line 929
    .end local v11    # "doubleValAnno2":Ljavax/lang/model/element/AnnotationMirror;
    :cond_d
    iget-object v11, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v11, v11, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v11

    .line 931
    :cond_e
    if-eqz v9, :cond_f

    if-eqz v8, :cond_f

    .line 933
    iget-object v11, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v11, v8}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->convertIntValToIntRange(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v11

    .line 934
    .local v11, "intRangeAnno2":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v0, v9, v11}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v12

    return-object v12

    .line 938
    .end local v11    # "intRangeAnno2":Ljavax/lang/model/element/AnnotationMirror;
    :cond_f
    iget-object v11, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v11, v11, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v11

    :sswitch_data_0
    .sparse-switch
        -0x1b4e6e14 -> :sswitch_4
        0x10601bb6 -> :sswitch_3
        0x454d51d6 -> :sswitch_2
        0x79bc0f27 -> :sswitch_1
        0x7e5c7d48 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x1b4e6e14 -> :sswitch_a
        0x10601bb6 -> :sswitch_9
        0x20889e16 -> :sswitch_8
        0x454d51d6 -> :sswitch_7
        0x79bc0f27 -> :sswitch_6
        0x7e5c7d48 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x1b4e6e14 -> :sswitch_10
        0x10601bb6 -> :sswitch_f
        0x20889e16 -> :sswitch_e
        0x454d51d6 -> :sswitch_d
        0x79bc0f27 -> :sswitch_c
        0x7e5c7d48 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public numberOfIterationsBeforeWidening()I
    .locals 1

    .line 686
    const/16 v0, 0xb

    return v0
.end method

.method public widenedUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 6
    .param p1, "newQualifier"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "previousQualifier"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 692
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 693
    .local v0, "lub":Ljavax/lang/model/element/AnnotationMirror;
    const-string v1, "org.checkerframework.common.value.qual.IntRange"

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 694
    invoke-static {v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    .line 695
    .local v1, "lubRange":Lorg/checkerframework/common/value/util/Range;
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    .line 696
    .local v2, "newRange":Lorg/checkerframework/common/value/util/Range;
    invoke-static {p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v3

    .line 697
    .local v3, "oldRange":Lorg/checkerframework/common/value/util/Range;
    invoke-direct {p0, v2, v3, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->widenedRange(Lorg/checkerframework/common/value/util/Range;Lorg/checkerframework/common/value/util/Range;Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    .line 698
    .local v4, "wubRange":Lorg/checkerframework/common/value/util/Range;
    iget-object v5, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v5, v4}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntRangeAnnotation(Lorg/checkerframework/common/value/util/Range;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    return-object v5

    .line 699
    .end local v1    # "lubRange":Lorg/checkerframework/common/value/util/Range;
    .end local v2    # "newRange":Lorg/checkerframework/common/value/util/Range;
    .end local v3    # "oldRange":Lorg/checkerframework/common/value/util/Range;
    .end local v4    # "wubRange":Lorg/checkerframework/common/value/util/Range;
    :cond_0
    const-string v1, "org.checkerframework.common.value.qual.ArrayLenRange"

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 700
    invoke-static {v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    .line 701
    .restart local v1    # "lubRange":Lorg/checkerframework/common/value/util/Range;
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    .line 702
    .restart local v2    # "newRange":Lorg/checkerframework/common/value/util/Range;
    invoke-static {p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v3

    .line 703
    .restart local v3    # "oldRange":Lorg/checkerframework/common/value/util/Range;
    iget-object v4, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-direct {p0, v2, v3, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;->widenedRange(Lorg/checkerframework/common/value/util/Range;Lorg/checkerframework/common/value/util/Range;Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createArrayLenRangeAnnotation(Lorg/checkerframework/common/value/util/Range;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    return-object v4

    .line 705
    .end local v1    # "lubRange":Lorg/checkerframework/common/value/util/Range;
    .end local v2    # "newRange":Lorg/checkerframework/common/value/util/Range;
    .end local v3    # "oldRange":Lorg/checkerframework/common/value/util/Range;
    :cond_1
    return-object v0
.end method
