.class public Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;
.super Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;
.source "QualifierDefaults.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DefaultApplierElementImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<",
        "Ljava/lang/Void;",
        "Ljavax/lang/model/element/AnnotationMirror;",
        ">;"
    }
.end annotation


# instance fields
.field private boundType:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

.field private isLowerBound:Z

.field private isUpperBound:Z

.field final synthetic this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;


# direct methods
.method protected constructor <init>(Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    .line 815
    iput-object p1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    invoke-direct {p0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;-><init>()V

    .line 983
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->isLowerBound:Z

    .line 986
    iput-boolean v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->isUpperBound:Z

    .line 989
    sget-object v0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;->UNBOUNDED:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    iput-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->boundType:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .line 976
    invoke-super {p0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->reset()V

    .line 977
    iget-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v0, v0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->impl:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->isLowerBound:Z

    .line 978
    iget-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v0, v0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->impl:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;

    iput-boolean v1, v0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->isUpperBound:Z

    .line 979
    iget-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v0, v0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->impl:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;

    sget-object v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;->UNBOUNDED:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    iput-object v1, v0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->boundType:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    .line 980
    return-void
.end method

.method public bridge synthetic scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 815
    check-cast p2, Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/Void;
    .locals 6
    .param p1, "t"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "qual"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 820
    iget-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    invoke-static {v0}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->access$000(Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->shouldBeAnnotated(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 821
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0

    .line 825
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v0, v0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    if-ne p1, v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    .line 826
    .local v0, "isTopLevelType":Z
    :goto_1
    sget-object v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$1;->$SwitchMap$org$checkerframework$framework$qual$TypeUseLocation:[I

    iget-object v4, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v4, v4, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->location:Lorg/checkerframework/framework/qual/TypeUseLocation;

    invoke-virtual {v4}, Lorg/checkerframework/framework/qual/TypeUseLocation;->ordinal()I

    move-result v4

    aget v1, v1, v4

    const/4 v4, 0x2

    packed-switch v1, :pswitch_data_0

    .line 966
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QualifierDefaults.DefaultApplierElement: unhandled location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v3, v3, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->location:Lorg/checkerframework/framework/qual/TypeUseLocation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1

    .line 963
    :pswitch_0
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    invoke-virtual {v1, p1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->addAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 964
    goto/16 :goto_4

    .line 956
    :pswitch_1
    iget-boolean v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->isUpperBound:Z

    if-eqz v1, :cond_c

    .line 957
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    invoke-virtual {v1, p1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->addAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    goto/16 :goto_4

    .line 951
    :pswitch_2
    iget-boolean v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->isUpperBound:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->boundType:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    new-array v2, v2, [Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    sget-object v4, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;->UPPER:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;->isOneOf([Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 952
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    invoke-virtual {v1, p1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->addAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    goto/16 :goto_4

    .line 945
    :pswitch_3
    iget-boolean v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->isUpperBound:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->boundType:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    new-array v4, v4, [Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    sget-object v5, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;->UNBOUNDED:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    aput-object v5, v4, v3

    sget-object v3, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;->LOWER:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    aput-object v3, v4, v2

    .line 946
    invoke-virtual {v1, v4}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;->isOneOf([Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 947
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    invoke-virtual {v1, p1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->addAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    goto/16 :goto_4

    .line 940
    :pswitch_4
    iget-boolean v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->isLowerBound:Z

    if-eqz v1, :cond_c

    .line 941
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    invoke-virtual {v1, p1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->addAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    goto/16 :goto_4

    .line 935
    :pswitch_5
    iget-boolean v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->isLowerBound:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->boundType:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    new-array v2, v2, [Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    sget-object v4, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;->LOWER:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;->isOneOf([Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 936
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    invoke-virtual {v1, p1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->addAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    goto/16 :goto_4

    .line 929
    :pswitch_6
    iget-boolean v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->isLowerBound:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->boundType:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    new-array v4, v4, [Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    sget-object v5, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;->UNBOUNDED:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    aput-object v5, v4, v3

    sget-object v3, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;->UPPER:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    aput-object v3, v4, v2

    .line 930
    invoke-virtual {v1, v4}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;->isOneOf([Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 931
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    invoke-virtual {v1, p1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->addAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    goto/16 :goto_4

    .line 917
    :pswitch_7
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v1, v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->scope:Ljavax/lang/model/element/Element;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v1, v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->scope:Ljavax/lang/model/element/Element;

    .line 918
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_c

    .line 919
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->EXECUTABLE:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_c

    if-eqz v0, :cond_c

    .line 921
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 922
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 923
    .local v1, "returnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    invoke-virtual {v2, v1, v3}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->shouldBeAnnotated(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 924
    iget-object v2, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    invoke-virtual {v2, v1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->addAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 926
    .end local v1    # "returnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_3
    goto/16 :goto_4

    .line 905
    :pswitch_8
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v1, v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->scope:Ljavax/lang/model/element/Element;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v1, v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->scope:Ljavax/lang/model/element/Element;

    .line 906
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_c

    .line 907
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->EXECUTABLE:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_c

    if-eqz v0, :cond_c

    .line 909
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 910
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 911
    .restart local v1    # "returnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    invoke-virtual {v2, v1, v3}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->shouldBeAnnotated(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 912
    iget-object v2, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    invoke-virtual {v2, v1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->addAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 914
    .end local v1    # "returnType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_4
    goto/16 :goto_4

    .line 884
    :pswitch_9
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v1, v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->scope:Ljavax/lang/model/element/Element;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v1, v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->scope:Ljavax/lang/model/element/Element;

    .line 885
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->PARAMETER:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_5

    if-eqz v0, :cond_5

    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v1, v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->scope:Ljavax/lang/model/element/Element;

    .line 887
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    const-string v2, "this"

    invoke-interface {v1, v2}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 891
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    invoke-virtual {v1, p1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->addAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    goto/16 :goto_4

    .line 892
    :cond_5
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v1, v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->scope:Ljavax/lang/model/element/Element;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v1, v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->scope:Ljavax/lang/model/element/Element;

    .line 893
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_c

    .line 894
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->EXECUTABLE:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_c

    if-eqz v0, :cond_c

    .line 897
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 898
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    .line 899
    .local v1, "receiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    iget-object v2, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    invoke-virtual {v2, v1, v3}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->shouldBeAnnotated(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 900
    iget-object v2, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    invoke-virtual {v2, v1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->addAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 902
    .end local v1    # "receiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_6
    goto/16 :goto_4

    .line 865
    :pswitch_a
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v1, v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->scope:Ljavax/lang/model/element/Element;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v1, v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->scope:Ljavax/lang/model/element/Element;

    .line 866
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->PARAMETER:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_7

    if-eqz v0, :cond_7

    .line 868
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    invoke-virtual {v1, p1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->addAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    goto/16 :goto_4

    .line 869
    :cond_7
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v1, v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->scope:Ljavax/lang/model/element/Element;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v1, v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->scope:Ljavax/lang/model/element/Element;

    .line 870
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v1, v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->scope:Ljavax/lang/model/element/Element;

    .line 871
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_c

    .line 872
    :cond_8
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->EXECUTABLE:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_c

    if-eqz v0, :cond_c

    .line 876
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 877
    .local v2, "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v4, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    invoke-virtual {v4, v2, v3}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->shouldBeAnnotated(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 878
    iget-object v4, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    invoke-virtual {v4, v2, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->addAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 880
    .end local v2    # "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_9
    goto :goto_2

    :cond_a
    goto/16 :goto_4

    .line 851
    :pswitch_b
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v1, v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->scope:Ljavax/lang/model/element/Element;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v1, v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->scope:Ljavax/lang/model/element/Element;

    .line 852
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->EXCEPTION_PARAMETER:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_c

    if-eqz v0, :cond_c

    .line 854
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    invoke-virtual {v1, p1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->addAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 855
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->UNION:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_c

    .line 856
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;

    .line 858
    .local v1, "aut":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->getAlternatives()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 859
    .local v3, "anno":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    iget-object v4, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    invoke-virtual {v4, v3, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->addAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 860
    .end local v3    # "anno":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    goto :goto_3

    .line 861
    .end local v1    # "aut":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    :cond_b
    goto :goto_4

    .line 844
    :pswitch_c
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v1, v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->scope:Ljavax/lang/model/element/Element;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v1, v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->scope:Ljavax/lang/model/element/Element;

    .line 845
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->RESOURCE_VARIABLE:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_c

    if-eqz v0, :cond_c

    .line 847
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    invoke-virtual {v1, p1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->addAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_4

    .line 835
    :pswitch_d
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v1, v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->scope:Ljavax/lang/model/element/Element;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v1, v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->scope:Ljavax/lang/model/element/Element;

    .line 836
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->LOCAL_VARIABLE:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_c

    if-eqz v0, :cond_c

    .line 840
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    invoke-virtual {v1, p1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->addAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_4

    .line 828
    :pswitch_e
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v1, v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->scope:Ljavax/lang/model/element/Element;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v1, v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->scope:Ljavax/lang/model/element/Element;

    .line 829
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->FIELD:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_c

    if-eqz v0, :cond_c

    .line 831
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    invoke-virtual {v1, p1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->addAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 971
    :cond_c
    :goto_4
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected visitBounds(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 8
    .param p1, "boundedType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "upperBound"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "lowerBound"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p4, "qual"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 1022
    iget-boolean v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->isUpperBound:Z

    .line 1023
    .local v0, "prevIsUpperBound":Z
    iget-boolean v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->isLowerBound:Z

    .line 1024
    .local v1, "prevIsLowerBound":Z
    iget-object v2, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->boundType:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    .line 1026
    .local v2, "prevBoundType":Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;
    iget-object v3, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v3, v3, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-static {p1, v3}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->access$100(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    move-result-object v3

    iput-object v3, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->boundType:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    .line 1029
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->isLowerBound:Z

    .line 1030
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->isUpperBound:Z

    .line 1031
    const/4 v5, 0x0

    invoke-virtual {p0, p3, p4, v5}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->scanAndReduce(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    iget-object v6, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->visitedNodes:Ljava/util/Map;

    iget-object v7, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v7, v7, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    iput-boolean v4, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->isLowerBound:Z

    .line 1036
    iput-boolean v3, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->isUpperBound:Z

    .line 1037
    invoke-virtual {p0, p2, p4, v5}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->scanAndReduce(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    iget-object v3, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->visitedNodes:Ljava/util/Map;

    iget-object v4, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->this$0:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    iget-object v4, v4, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1042
    iput-boolean v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->isUpperBound:Z

    .line 1043
    iput-boolean v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->isLowerBound:Z

    .line 1044
    iput-object v2, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->boundType:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    .line 1045
    nop

    .line 1046
    return-void

    .line 1042
    :catchall_0
    move-exception v3

    iput-boolean v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->isUpperBound:Z

    .line 1043
    iput-boolean v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->isLowerBound:Z

    .line 1044
    iput-object v2, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->boundType:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    throw v3
.end method

.method public bridge synthetic visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 815
    check-cast p2, Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/Void;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "qual"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 993
    iget-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0

    .line 997
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->visitBounds(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 998
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 815
    check-cast p2, Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/Void;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "qual"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 1003
    iget-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0

    .line 1007
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->visitBounds(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 1008
    const/4 v0, 0x0

    return-object v0
.end method
