.class public Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;
.super Ljava/lang/Object;
.source "QualifierDefaults.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/defaults/QualifierDefaults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultApplierElement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;
    }
.end annotation


# instance fields
.field protected final atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

.field private final defaultableTypeVar:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

.field protected final impl:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;

.field protected location:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field protected final scope:Ljavax/lang/model/element/Element;

.field protected final type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)V
    .locals 1
    .param p1, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "scope"    # Ljavax/lang/model/element/Element;
    .param p3, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p4, "applyToTypeVar"    # Z

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    iput-object p1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 749
    iput-object p2, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->scope:Ljavax/lang/model/element/Element;

    .line 750
    iput-object p3, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 751
    new-instance v0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;

    invoke-direct {v0, p0}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;-><init>(Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;)V

    iput-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->impl:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;

    .line 752
    if-eqz p4, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->defaultableTypeVar:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 753
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    .line 716
    iget-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->defaultableTypeVar:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    return-object v0
.end method


# virtual methods
.method protected addAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "qual"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 795
    invoke-virtual {p1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->isAnnotatedInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->EXECUTABLE:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v1, :cond_0

    .line 796
    invoke-virtual {p1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 802
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->INTERSECTION:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_2

    .line 803
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    .line 804
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypesField()Ljava/util/List;

    move-result-object v0

    .line 805
    .local v0, "sups":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    if-eqz v0, :cond_2

    .line 806
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 807
    .local v2, "sup":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v2, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->isAnnotatedInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 808
    invoke-virtual {v2, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 810
    .end local v2    # "sup":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_1
    goto :goto_0

    .line 813
    .end local v0    # "sups":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    :cond_2
    return-void
.end method

.method public applyDefault(Lorg/checkerframework/framework/util/defaults/Default;)V
    .locals 3
    .param p1, "def"    # Lorg/checkerframework/framework/util/defaults/Default;

    .line 761
    iget-object v0, p1, Lorg/checkerframework/framework/util/defaults/Default;->location:Lorg/checkerframework/framework/qual/TypeUseLocation;

    iput-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->location:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 762
    iget-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->impl:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;

    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v2, p1, Lorg/checkerframework/framework/util/defaults/Default;->anno:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement$DefaultApplierElementImpl;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    return-void
.end method

.method protected shouldBeAnnotated(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)Z
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "applyToTypeVar"    # Z

    .line 775
    if-eqz p1, :cond_1

    .line 779
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v1, :cond_1

    .line 780
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v1, :cond_1

    .line 781
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    instance-of v0, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 775
    :goto_0
    return v0
.end method
