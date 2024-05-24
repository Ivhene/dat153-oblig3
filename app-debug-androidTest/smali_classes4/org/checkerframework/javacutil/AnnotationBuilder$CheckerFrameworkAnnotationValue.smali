.class Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationValue;
.super Ljava/lang/Object;
.source "AnnotationBuilder.java"

# interfaces
.implements Ljavax/lang/model/element/AnnotationValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/javacutil/AnnotationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckerFrameworkAnnotationValue"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private toStringVal:Ljava/lang/String;

.field private final value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 635
    const-class v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    iput-object p1, p0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationValue;->value:Ljava/lang/Object;

    .line 644
    return-void
.end method


# virtual methods
.method public accept(Ljavax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/lang/model/element/AnnotationValueVisitor<",
            "TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 696
    .local p1, "v":Ljavax/lang/model/element/AnnotationValueVisitor;, "Ljavax/lang/model/element/AnnotationValueVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    iget-object v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationValue;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljavax/lang/model/element/AnnotationMirror;

    if-eqz v1, :cond_0

    .line 697
    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    invoke-interface {p1, v0, p2}, Ljavax/lang/model/element/AnnotationValueVisitor;->visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 698
    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 699
    check-cast v0, Ljava/util/List;

    invoke-interface {p1, v0, p2}, Ljavax/lang/model/element/AnnotationValueVisitor;->visitArray(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 700
    :cond_1
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 701
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0, p2}, Ljavax/lang/model/element/AnnotationValueVisitor;->visitBoolean(ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 702
    :cond_2
    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_3

    .line 703
    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-interface {p1, v0, p2}, Ljavax/lang/model/element/AnnotationValueVisitor;->visitChar(CLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 704
    :cond_3
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_4

    .line 705
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p1, v0, v1, p2}, Ljavax/lang/model/element/AnnotationValueVisitor;->visitDouble(DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 706
    :cond_4
    instance-of v1, v0, Ljavax/lang/model/element/VariableElement;

    if-eqz v1, :cond_5

    .line 707
    check-cast v0, Ljavax/lang/model/element/VariableElement;

    invoke-interface {p1, v0, p2}, Ljavax/lang/model/element/AnnotationValueVisitor;->visitEnumConstant(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 708
    :cond_5
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_6

    .line 709
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p1, v0, p2}, Ljavax/lang/model/element/AnnotationValueVisitor;->visitFloat(FLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 710
    :cond_6
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 711
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0, p2}, Ljavax/lang/model/element/AnnotationValueVisitor;->visitInt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 712
    :cond_7
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_8

    .line 713
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v0, v1, p2}, Ljavax/lang/model/element/AnnotationValueVisitor;->visitLong(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 714
    :cond_8
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_9

    .line 715
    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-interface {p1, v0, p2}, Ljavax/lang/model/element/AnnotationValueVisitor;->visitShort(SLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 716
    :cond_9
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 717
    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Ljavax/lang/model/element/AnnotationValueVisitor;->visitString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 718
    :cond_a
    instance-of v1, v0, Ljavax/lang/model/type/TypeMirror;

    if-eqz v1, :cond_b

    .line 719
    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    invoke-interface {p1, v0, p2}, Ljavax/lang/model/element/AnnotationValueVisitor;->visitType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 721
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " unknown type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 729
    instance-of v0, p1, Ljavax/lang/model/element/AnnotationValue;

    if-nez v0, :cond_0

    .line 730
    const/4 v0, 0x0

    return v0

    .line 732
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/lang/model/element/AnnotationValue;

    .line 733
    .local v0, "other":Ljavax/lang/model/element/AnnotationValue;
    invoke-virtual {p0}, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 648
    iget-object v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 738
    iget-object v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationValue;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 654
    iget-object v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationValue;->toStringVal:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 655
    return-object v0

    .line 658
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationValue;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationValue;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "toStringVal":Ljava/lang/String;
    goto/16 :goto_1

    .line 660
    .end local v0    # "toStringVal":Ljava/lang/String;
    :cond_1
    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_2

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationValue;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "toStringVal":Ljava/lang/String;
    goto/16 :goto_1

    .line 662
    .end local v0    # "toStringVal":Ljava/lang/String;
    :cond_2
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_5

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 664
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 665
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 666
    const/4 v2, 0x1

    .line 667
    .local v2, "isFirst":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 668
    .local v4, "o":Ljava/lang/Object;
    if-nez v2, :cond_3

    .line 669
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    :cond_3
    const/4 v2, 0x0

    .line 672
    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .end local v4    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 674
    :cond_4
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 675
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 676
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "isFirst":Z
    .local v0, "toStringVal":Ljava/lang/String;
    goto :goto_1

    .end local v0    # "toStringVal":Ljava/lang/String;
    :cond_5
    instance-of v1, v0, Ljavax/lang/model/element/VariableElement;

    if-eqz v1, :cond_7

    .line 678
    check-cast v0, Ljavax/lang/model/element/VariableElement;

    .line 679
    .local v0, "var":Ljavax/lang/model/element/VariableElement;
    invoke-interface {v0}, Ljavax/lang/model/element/VariableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 680
    .local v1, "encl":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 681
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 683
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 684
    .end local v1    # "encl":Ljava/lang/String;
    .local v0, "toStringVal":Ljava/lang/String;
    goto :goto_1

    .end local v0    # "toStringVal":Ljava/lang/String;
    :cond_7
    instance-of v1, v0, Ljavax/lang/model/type/TypeMirror;

    if-eqz v1, :cond_8

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isClassType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationValue;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "toStringVal":Ljava/lang/String;
    goto :goto_1

    .line 687
    .end local v0    # "toStringVal":Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationValue;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 689
    .restart local v0    # "toStringVal":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationValue;->toStringVal:Ljava/lang/String;

    .line 690
    return-object v1
.end method
