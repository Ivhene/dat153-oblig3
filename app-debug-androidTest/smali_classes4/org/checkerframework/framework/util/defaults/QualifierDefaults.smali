.class public Lorg/checkerframework/framework/util/defaults/QualifierDefaults;
.super Ljava/lang/Object;
.source "QualifierDefaults.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;,
        Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x12c

.field public static final STANDARD_CLIMB_DEFAULTS_BOTTOM:[Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final STANDARD_CLIMB_DEFAULTS_TOP:[Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final STANDARD_UNCHECKED_DEFAULTS_BOTTOM:[Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final STANDARD_UNCHECKED_DEFAULTS_TOP:[Lorg/checkerframework/framework/qual/TypeUseLocation;

.field protected static final elementToBoundType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/Element;",
            "Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;",
            ">;"
        }
    .end annotation
.end field

.field private static final validUncheckedCodeDefaultLocations:[Lorg/checkerframework/framework/qual/TypeUseLocation;


# instance fields
.field private applyToTypeVar:Z

.field private final atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

.field private final checkedCodeDefaults:Lorg/checkerframework/framework/util/defaults/DefaultSet;

.field private final elementAnnotatedFors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/Element;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final elementDefaults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/Element;",
            "Lorg/checkerframework/framework/util/defaults/DefaultSet;",
            ">;"
        }
    .end annotation
.end field

.field private final elements:Ljavax/lang/model/util/Elements;

.field private final uncheckedCodeDefaults:Lorg/checkerframework/framework/util/defaults/DefaultSet;

.field private final upstreamCheckerNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final useUncheckedCodeDefaultsBytecode:Z

.field private final useUncheckedCodeDefaultsSource:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 91
    nop

    .line 92
    const/16 v0, 0x12c

    invoke-static {v0}, Lorg/checkerframework/javacutil/CollectionUtils;->createLRUCache(I)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->elementToBoundType:Ljava/util/Map;

    .line 105
    const/4 v0, 0x4

    new-array v1, v0, [Lorg/checkerframework/framework/qual/TypeUseLocation;

    sget-object v2, Lorg/checkerframework/framework/qual/TypeUseLocation;->LOCAL_VARIABLE:Lorg/checkerframework/framework/qual/TypeUseLocation;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/checkerframework/framework/qual/TypeUseLocation;->RESOURCE_VARIABLE:Lorg/checkerframework/framework/qual/TypeUseLocation;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lorg/checkerframework/framework/qual/TypeUseLocation;->EXCEPTION_PARAMETER:Lorg/checkerframework/framework/qual/TypeUseLocation;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lorg/checkerframework/framework/qual/TypeUseLocation;->IMPLICIT_UPPER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sput-object v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->STANDARD_CLIMB_DEFAULTS_TOP:[Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 113
    new-array v1, v4, [Lorg/checkerframework/framework/qual/TypeUseLocation;

    sget-object v2, Lorg/checkerframework/framework/qual/TypeUseLocation;->IMPLICIT_LOWER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v2, v1, v3

    sput-object v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->STANDARD_CLIMB_DEFAULTS_BOTTOM:[Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 118
    const/16 v1, 0x8

    new-array v1, v1, [Lorg/checkerframework/framework/qual/TypeUseLocation;

    sget-object v2, Lorg/checkerframework/framework/qual/TypeUseLocation;->FIELD:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v2, v1, v3

    sget-object v2, Lorg/checkerframework/framework/qual/TypeUseLocation;->PARAMETER:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v2, v1, v4

    sget-object v2, Lorg/checkerframework/framework/qual/TypeUseLocation;->RETURN:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v2, v1, v5

    sget-object v2, Lorg/checkerframework/framework/qual/TypeUseLocation;->RECEIVER:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v2, v1, v6

    sget-object v2, Lorg/checkerframework/framework/qual/TypeUseLocation;->UPPER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v2, v1, v0

    const/4 v0, 0x5

    sget-object v2, Lorg/checkerframework/framework/qual/TypeUseLocation;->LOWER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v2, v1, v0

    const/4 v0, 0x6

    sget-object v2, Lorg/checkerframework/framework/qual/TypeUseLocation;->OTHERWISE:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v2, v1, v0

    const/4 v0, 0x7

    sget-object v2, Lorg/checkerframework/framework/qual/TypeUseLocation;->ALL:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v2, v1, v0

    sput-object v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->validUncheckedCodeDefaultLocations:[Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 133
    new-array v0, v6, [Lorg/checkerframework/framework/qual/TypeUseLocation;

    sget-object v1, Lorg/checkerframework/framework/qual/TypeUseLocation;->RETURN:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v1, v0, v3

    sget-object v1, Lorg/checkerframework/framework/qual/TypeUseLocation;->FIELD:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v1, v0, v4

    sget-object v1, Lorg/checkerframework/framework/qual/TypeUseLocation;->UPPER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v1, v0, v5

    sput-object v0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->STANDARD_UNCHECKED_DEFAULTS_TOP:[Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 138
    new-array v0, v5, [Lorg/checkerframework/framework/qual/TypeUseLocation;

    sget-object v1, Lorg/checkerframework/framework/qual/TypeUseLocation;->PARAMETER:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v1, v0, v3

    sget-object v1, Lorg/checkerframework/framework/qual/TypeUseLocation;->LOWER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v1, v0, v4

    sput-object v0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->STANDARD_UNCHECKED_DEFAULTS_BOTTOM:[Lorg/checkerframework/framework/qual/TypeUseLocation;

    return-void
.end method

.method public constructor <init>(Ljavax/lang/model/util/Elements;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 2
    .param p1, "elements"    # Ljavax/lang/model/util/Elements;
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->applyToTypeVar:Z

    .line 84
    new-instance v0, Lorg/checkerframework/framework/util/defaults/DefaultSet;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/defaults/DefaultSet;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->checkedCodeDefaults:Lorg/checkerframework/framework/util/defaults/DefaultSet;

    .line 85
    new-instance v0, Lorg/checkerframework/framework/util/defaults/DefaultSet;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/defaults/DefaultSet;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->uncheckedCodeDefaults:Lorg/checkerframework/framework/util/defaults/DefaultSet;

    .line 99
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->elementDefaults:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->elementAnnotatedFors:Ljava/util/Map;

    .line 159
    iput-object p1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->elements:Ljavax/lang/model/util/Elements;

    .line 160
    iput-object p2, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 161
    nop

    .line 162
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/framework/util/CFContext;->getChecker()Lorg/checkerframework/framework/source/SourceChecker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/source/SourceChecker;->getUpstreamCheckerNames()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->upstreamCheckerNames:Ljava/util/List;

    .line 163
    nop

    .line 164
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/framework/util/CFContext;->getChecker()Lorg/checkerframework/framework/source/SourceChecker;

    move-result-object v0

    const-string v1, "bytecode"

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/source/SourceChecker;->useUncheckedCodeDefault(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->useUncheckedCodeDefaultsBytecode:Z

    .line 165
    nop

    .line 166
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/framework/util/CFContext;->getChecker()Lorg/checkerframework/framework/source/SourceChecker;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/source/SourceChecker;->useUncheckedCodeDefault(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->useUncheckedCodeDefaultsSource:Z

    .line 167
    return-void
.end method

.method static synthetic access$100(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "x1"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 58
    invoke-static {p0, p1}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->getBoundType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    move-result-object v0

    return-object v0
.end method

.method private applyDefaults(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 6
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 448
    sget-object v0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 472
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->nearestEnclosingExceptLocal(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .local v0, "elt":Ljavax/lang/model/element/Element;
    goto :goto_0

    .line 462
    .end local v0    # "elt":Ljavax/lang/model/element/Element;
    :pswitch_0
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/MethodInvocationTree;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 463
    .restart local v0    # "elt":Ljavax/lang/model/element/Element;
    goto :goto_0

    .line 454
    .end local v0    # "elt":Ljavax/lang/model/element/Element;
    :pswitch_1
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/IdentifierTree;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 455
    .restart local v0    # "elt":Ljavax/lang/model/element/Element;
    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->isTypeDeclaration(Ljavax/lang/model/element/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->nearestEnclosingExceptLocal(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    goto :goto_0

    .line 450
    .end local v0    # "elt":Ljavax/lang/model/element/Element;
    :pswitch_2
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/MemberSelectTree;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 451
    .restart local v0    # "elt":Ljavax/lang/model/element/Element;
    nop

    .line 478
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    instance-of v2, v1, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 481
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getShouldDefaultTypeVarLocals()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    .line 482
    .local v1, "defaultTypeVarLocals":Z
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 485
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    sget-object v5, Ljavax/lang/model/element/ElementKind;->LOCAL_VARIABLE:Ljavax/lang/model/element/ElementKind;

    if-ne v2, v5, :cond_2

    .line 486
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v5, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v5, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->applyToTypeVar:Z

    .line 487
    invoke-direct {p0, v0, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->applyDefaultsElement(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 488
    iput-boolean v4, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->applyToTypeVar:Z

    .line 489
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private applyDefaultsElement(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 4
    .param p1, "annotationScope"    # Ljavax/lang/model/element/Element;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 689
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->defaultsAt(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/util/defaults/DefaultSet;

    move-result-object v0

    .line 690
    .local v0, "defaults":Lorg/checkerframework/framework/util/defaults/DefaultSet;
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-boolean v2, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->applyToTypeVar:Z

    .line 691
    invoke-virtual {p0, v1, p1, p2, v2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->createDefaultApplierElement(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    move-result-object v1

    .line 693
    .local v1, "applier":Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;
    invoke-virtual {v0}, Lorg/checkerframework/framework/util/defaults/DefaultSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/util/defaults/Default;

    .line 694
    .local v3, "def":Lorg/checkerframework/framework/util/defaults/Default;
    invoke-virtual {v1, v3}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->applyDefault(Lorg/checkerframework/framework/util/defaults/Default;)V

    .line 695
    .end local v3    # "def":Lorg/checkerframework/framework/util/defaults/Default;
    goto :goto_0

    .line 697
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->applyUncheckedCodeDefaults(Ljavax/lang/model/element/Element;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 698
    iget-object v2, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->uncheckedCodeDefaults:Lorg/checkerframework/framework/util/defaults/DefaultSet;

    invoke-virtual {v2}, Lorg/checkerframework/framework/util/defaults/DefaultSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/util/defaults/Default;

    .line 699
    .restart local v3    # "def":Lorg/checkerframework/framework/util/defaults/Default;
    invoke-virtual {v1, v3}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->applyDefault(Lorg/checkerframework/framework/util/defaults/Default;)V

    .line 700
    .end local v3    # "def":Lorg/checkerframework/framework/util/defaults/Default;
    goto :goto_1

    .line 703
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->checkedCodeDefaults:Lorg/checkerframework/framework/util/defaults/DefaultSet;

    invoke-virtual {v2}, Lorg/checkerframework/framework/util/defaults/DefaultSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/util/defaults/Default;

    .line 704
    .restart local v3    # "def":Lorg/checkerframework/framework/util/defaults/Default;
    invoke-virtual {v1, v3}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;->applyDefault(Lorg/checkerframework/framework/util/defaults/Default;)V

    .line 705
    .end local v3    # "def":Lorg/checkerframework/framework/util/defaults/Default;
    goto :goto_2

    .line 706
    :cond_2
    return-void
.end method

.method private checkDuplicates(Lorg/checkerframework/framework/util/defaults/DefaultSet;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V
    .locals 3
    .param p1, "previousDefaults"    # Lorg/checkerframework/framework/util/defaults/DefaultSet;
    .param p2, "newAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "newLoc"    # Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 324
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->conflictsWithExistingDefaults(Lorg/checkerframework/framework/util/defaults/DefaultSet;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    return-void

    .line 325
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only one qualifier from a hierarchy can be the default. Existing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/framework/util/defaults/Default;

    invoke-direct {v2, p2, p3}, Lorg/checkerframework/framework/util/defaults/Default;-><init>(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkIsValidUncheckedCodeLocation(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V
    .locals 5
    .param p1, "uncheckedDefaultAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "location"    # Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "isValidUntypeLocation":Z
    invoke-static {}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->validLocationsForUncheckedCodeDefaults()[Lorg/checkerframework/framework/qual/TypeUseLocation;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 307
    .local v4, "validLoc":Lorg/checkerframework/framework/qual/TypeUseLocation;
    if-ne p2, v4, :cond_0

    .line 308
    const/4 v0, 0x1

    .line 309
    goto :goto_1

    .line 306
    .end local v4    # "validLoc":Lorg/checkerframework/framework/qual/TypeUseLocation;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 313
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 320
    return-void

    .line 314
    :cond_2
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid unchecked code default location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private conflictsWithExistingDefaults(Lorg/checkerframework/framework/util/defaults/DefaultSet;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)Z
    .locals 5
    .param p1, "previousDefaults"    # Lorg/checkerframework/framework/util/defaults/DefaultSet;
    .param p2, "newAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "newLoc"    # Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 335
    iget-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 337
    .local v0, "qualHierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    invoke-virtual {p1}, Lorg/checkerframework/framework/util/defaults/DefaultSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/util/defaults/Default;

    .line 338
    .local v2, "previous":Lorg/checkerframework/framework/util/defaults/Default;
    iget-object v3, v2, Lorg/checkerframework/framework/util/defaults/Default;->anno:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p2, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lorg/checkerframework/framework/util/defaults/Default;->location:Lorg/checkerframework/framework/qual/TypeUseLocation;

    if-ne v3, p3, :cond_0

    .line 339
    iget-object v3, v2, Lorg/checkerframework/framework/util/defaults/Default;->anno:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 340
    .local v3, "previousTop":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v0, p2, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 341
    const/4 v1, 0x1

    return v1

    .line 344
    .end local v2    # "previous":Lorg/checkerframework/framework/util/defaults/Default;
    .end local v3    # "previousTop":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 345
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private defaultsAt(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/util/defaults/DefaultSet;
    .locals 6
    .param p1, "elt"    # Ljavax/lang/model/element/Element;

    .line 569
    if-nez p1, :cond_0

    .line 570
    sget-object v0, Lorg/checkerframework/framework/util/defaults/DefaultSet;->EMPTY:Lorg/checkerframework/framework/util/defaults/DefaultSet;

    return-object v0

    .line 573
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->elementDefaults:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->elementDefaults:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/util/defaults/DefaultSet;

    return-object v0

    .line 577
    :cond_1
    const/4 v0, 0x0

    .line 580
    .local v0, "qualifiers":Lorg/checkerframework/framework/util/defaults/DefaultSet;
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/framework/qual/DefaultQualifier;

    invoke-virtual {v1, p1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 582
    .local v1, "d":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v1, :cond_2

    .line 583
    new-instance v2, Lorg/checkerframework/framework/util/defaults/DefaultSet;

    invoke-direct {v2}, Lorg/checkerframework/framework/util/defaults/DefaultSet;-><init>()V

    move-object v0, v2

    .line 584
    invoke-direct {p0, v1}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->fromDefaultQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/framework/util/defaults/DefaultSet;

    move-result-object v2

    .line 586
    .local v2, "p":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/defaults/Default;>;"
    if-eqz v2, :cond_2

    .line 587
    invoke-virtual {v0, v2}, Lorg/checkerframework/framework/util/defaults/DefaultSet;->addAll(Ljava/util/Collection;)Z

    .line 593
    .end local v1    # "d":Ljavax/lang/model/element/AnnotationMirror;
    .end local v2    # "p":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/defaults/Default;>;"
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/framework/qual/DefaultQualifiers;

    invoke-virtual {v1, p1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 594
    .local v1, "ds":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v1, :cond_5

    .line 595
    if-nez v0, :cond_3

    .line 596
    new-instance v2, Lorg/checkerframework/framework/util/defaults/DefaultSet;

    invoke-direct {v2}, Lorg/checkerframework/framework/util/defaults/DefaultSet;-><init>()V

    move-object v0, v2

    .line 599
    :cond_3
    const-class v2, Ljava/util/List;

    .line 600
    const-string v3, "value"

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 601
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationMirror;

    .line 602
    .local v4, "d":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v4}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->fromDefaultQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/framework/util/defaults/DefaultSet;

    move-result-object v5

    .line 603
    .local v5, "p":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/defaults/Default;>;"
    if-eqz v5, :cond_4

    .line 604
    invoke-virtual {v0, v5}, Lorg/checkerframework/framework/util/defaults/DefaultSet;->addAll(Ljava/util/Collection;)Z

    .line 606
    .end local v4    # "d":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "p":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/defaults/Default;>;"
    :cond_4
    goto :goto_0

    .line 611
    .end local v1    # "ds":Ljavax/lang/model/element/AnnotationMirror;
    .end local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_5
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_6

    .line 612
    move-object v1, p1

    check-cast v1, Ljavax/lang/model/element/PackageElement;

    iget-object v2, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->elements:Ljavax/lang/model/util/Elements;

    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/ElementUtils;->parentPackage(Ljavax/lang/model/element/PackageElement;Ljavax/lang/model/util/Elements;)Ljavax/lang/model/element/PackageElement;

    move-result-object v1

    .local v1, "parent":Ljavax/lang/model/element/Element;
    goto :goto_1

    .line 614
    .end local v1    # "parent":Ljavax/lang/model/element/Element;
    :cond_6
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    .line 617
    .restart local v1    # "parent":Ljavax/lang/model/element/Element;
    :goto_1
    invoke-direct {p0, v1}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->defaultsAt(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/util/defaults/DefaultSet;

    move-result-object v2

    .line 618
    .local v2, "parentDefaults":Lorg/checkerframework/framework/util/defaults/DefaultSet;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/checkerframework/framework/util/defaults/DefaultSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    .line 621
    :cond_7
    invoke-virtual {v0, v2}, Lorg/checkerframework/framework/util/defaults/DefaultSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 619
    :cond_8
    :goto_2
    move-object v0, v2

    .line 624
    :goto_3
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/checkerframework/framework/util/defaults/DefaultSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 625
    iget-object v3, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->elementDefaults:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    return-object v0

    .line 628
    :cond_9
    sget-object v3, Lorg/checkerframework/framework/util/defaults/DefaultSet;->EMPTY:Lorg/checkerframework/framework/util/defaults/DefaultSet;

    return-object v3
.end method

.method private fromDefaultQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/framework/util/defaults/DefaultSet;
    .locals 7
    .param p1, "dq"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 494
    const-string v0, "value"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueClassName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Z)Ljavax/lang/model/element/Name;

    move-result-object v0

    .line 495
    .local v0, "cls":Ljavax/lang/model/element/Name;
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->elements:Ljavax/lang/model/util/Elements;

    invoke-static {v1, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromName(Ljavax/lang/model/util/Elements;Ljava/lang/CharSequence;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 497
    .local v1, "anno":Ljavax/lang/model/element/AnnotationMirror;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 498
    return-object v2

    .line 501
    :cond_0
    iget-object v3, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v3, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isSupportedQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 502
    iget-object v3, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v3, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->canonicalAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 505
    :cond_1
    iget-object v3, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v3, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isSupportedQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 506
    const-class v2, Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 507
    const-string v3, "locations"

    const/4 v4, 0x1

    invoke-static {p1, v3, v2, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueEnumArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v2

    .line 509
    .local v2, "locations":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/qual/TypeUseLocation;>;"
    new-instance v3, Lorg/checkerframework/framework/util/defaults/DefaultSet;

    invoke-direct {v3}, Lorg/checkerframework/framework/util/defaults/DefaultSet;-><init>()V

    .line 510
    .local v3, "ret":Lorg/checkerframework/framework/util/defaults/DefaultSet;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 511
    .local v5, "loc":Lorg/checkerframework/framework/qual/TypeUseLocation;
    new-instance v6, Lorg/checkerframework/framework/util/defaults/Default;

    invoke-direct {v6, v1, v5}, Lorg/checkerframework/framework/util/defaults/Default;-><init>(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    invoke-virtual {v3, v6}, Lorg/checkerframework/framework/util/defaults/DefaultSet;->add(Ljava/lang/Object;)Z

    .line 512
    .end local v5    # "loc":Lorg/checkerframework/framework/qual/TypeUseLocation;
    goto :goto_0

    .line 513
    :cond_2
    return-object v3

    .line 515
    .end local v2    # "locations":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/qual/TypeUseLocation;>;"
    .end local v3    # "ret":Lorg/checkerframework/framework/util/defaults/DefaultSet;
    :cond_3
    return-object v2
.end method

.method private static getBoundType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;
    .locals 3
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 1087
    instance-of v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    if-eqz v0, :cond_0

    .line 1088
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-static {v0, p1}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->getTypeVarBoundType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    move-result-object v0

    return-object v0

    .line 1091
    :cond_0
    instance-of v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    if-eqz v0, :cond_1

    .line 1092
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    invoke-static {v0, p1}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->getWildcardBoundType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    move-result-object v0

    return-object v0

    .line 1095
    :cond_1
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type kind: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getTypeVarBoundType(Ljavax/lang/model/element/TypeParameterElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;
    .locals 7
    .param p0, "typeParamElem"    # Ljavax/lang/model/element/TypeParameterElement;
    .param p1, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 1109
    sget-object v0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->elementToBoundType:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    .line 1110
    .local v1, "prev":Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;
    if-eqz v1, :cond_0

    .line 1111
    return-object v1

    .line 1114
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getTreeUtils()Lcom/sun/source/util/Trees;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sun/source/util/Trees;->getPath(Ljavax/lang/model/element/Element;)Lcom/sun/source/util/TreePath;

    move-result-object v2

    .line 1115
    .local v2, "declaredTypeVarEle":Lcom/sun/source/util/TreePath;
    if-nez v2, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    .line 1118
    .local v3, "typeParamDecl":Lcom/sun/source/tree/Tree;
    :goto_0
    if-nez v3, :cond_3

    .line 1121
    invoke-interface {p0}, Ljavax/lang/model/element/TypeParameterElement;->getBounds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1122
    invoke-interface {p0}, Ljavax/lang/model/element/TypeParameterElement;->getBounds()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/type/TypeMirror;

    invoke-static {v4}, Lorg/checkerframework/javacutil/TypesUtils;->isObject(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1125
    sget-object v4, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;->UNBOUNDED:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    .local v4, "boundType":Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;
    goto :goto_2

    .line 1129
    .end local v4    # "boundType":Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;
    :cond_2
    sget-object v4, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;->UPPER:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    .restart local v4    # "boundType":Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;
    goto :goto_2

    .line 1133
    .end local v4    # "boundType":Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;
    :cond_3
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->TYPE_PARAMETER:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_5

    .line 1134
    move-object v4, v3

    check-cast v4, Lcom/sun/source/tree/TypeParameterTree;

    .line 1136
    .local v4, "tptree":Lcom/sun/source/tree/TypeParameterTree;
    invoke-interface {v4}, Lcom/sun/source/tree/TypeParameterTree;->getBounds()Ljava/util/List;

    move-result-object v5

    .line 1137
    .local v5, "bnds":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1138
    sget-object v6, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;->UPPER:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    move-object v4, v6

    .local v6, "boundType":Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;
    goto :goto_1

    .line 1140
    .end local v6    # "boundType":Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;
    :cond_4
    sget-object v6, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;->UNBOUNDED:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    move-object v4, v6

    .line 1142
    .end local v5    # "bnds":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    .local v4, "boundType":Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;
    :goto_1
    nop

    .line 1152
    :goto_2
    invoke-interface {v0, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    return-object v4

    .line 1143
    .end local v4    # "boundType":Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;
    :cond_5
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected tree type for typeVar Element:\ntypeParamElem="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getTypeVarBoundType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;
    .locals 1
    .param p0, "typeVar"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p1, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 1101
    nop

    .line 1102
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeParameterElement;

    .line 1101
    invoke-static {v0, p1}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->getTypeVarBoundType(Ljavax/lang/model/element/TypeParameterElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    move-result-object v0

    return-object v0
.end method

.method public static getWildcardBoundType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;
    .locals 2
    .param p0, "annotatedWildcard"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p1, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 1163
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getUnderlyingType()Ljavax/lang/model/type/WildcardType;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    .line 1166
    .local v0, "wildcard":Lcom/sun/tools/javac/code/Type$WildcardType;
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$WildcardType;->isUnbound()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sun/tools/javac/code/Type$WildcardType;->bound:Lcom/sun/tools/javac/code/Type$TypeVar;

    if-eqz v1, :cond_0

    .line 1167
    iget-object v1, v0, Lcom/sun/tools/javac/code/Type$WildcardType;->bound:Lcom/sun/tools/javac/code/Type$TypeVar;

    .line 1169
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type$TypeVar;->asElement()Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/TypeParameterElement;

    .line 1168
    invoke-static {v1, p1}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->getTypeVarBoundType(Ljavax/lang/model/element/TypeParameterElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    move-result-object v1

    .local v1, "boundType":Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;
    goto :goto_0

    .line 1174
    .end local v1    # "boundType":Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;
    :cond_0
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$WildcardType;->isSuperBound()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;->LOWER:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;->UPPER:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    .line 1177
    .restart local v1    # "boundType":Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;
    :goto_0
    return-object v1
.end method

.method private isElementAnnotatedForThisChecker(Ljavax/lang/model/element/Element;)Z
    .locals 7
    .param p1, "elt"    # Ljavax/lang/model/element/Element;

    .line 520
    const/4 v0, 0x0

    .line 522
    .local v0, "elementAnnotatedForThisChecker":Z
    if-eqz p1, :cond_5

    .line 527
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->elementAnnotatedFors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->elementAnnotatedFors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 531
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/framework/qual/AnnotatedFor;

    invoke-virtual {v1, p1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 533
    .local v1, "af":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v1, :cond_2

    .line 534
    const-class v2, Ljava/lang/String;

    .line 535
    const-string v3, "value"

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v2

    .line 537
    .local v2, "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    .line 538
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 539
    .local v4, "checker":Ljava/lang/String;
    iget-object v5, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->upstreamCheckerNames:Ljava/util/List;

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lorg/checkerframework/framework/util/CheckerMain;->matchesFullyQualifiedProcessor(Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 541
    const/4 v0, 0x1

    .line 542
    goto :goto_1

    .line 544
    .end local v4    # "checker":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 548
    .end local v2    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    if-nez v0, :cond_4

    .line 550
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    if-ne v2, v3, :cond_3

    .line 553
    move-object v2, p1

    check-cast v2, Ljavax/lang/model/element/PackageElement;

    iget-object v3, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->elements:Ljavax/lang/model/util/Elements;

    invoke-static {v2, v3}, Lorg/checkerframework/javacutil/ElementUtils;->parentPackage(Ljavax/lang/model/element/PackageElement;Ljavax/lang/model/util/Elements;)Ljavax/lang/model/element/PackageElement;

    move-result-object v2

    .local v2, "parent":Ljavax/lang/model/element/Element;
    goto :goto_2

    .line 555
    .end local v2    # "parent":Ljavax/lang/model/element/Element;
    :cond_3
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    .line 558
    .restart local v2    # "parent":Ljavax/lang/model/element/Element;
    :goto_2
    if-eqz v2, :cond_4

    invoke-direct {p0, v2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->isElementAnnotatedForThisChecker(Ljavax/lang/model/element/Element;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 559
    const/4 v0, 0x1

    .line 563
    .end local v2    # "parent":Ljavax/lang/model/element/Element;
    :cond_4
    iget-object v2, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->elementAnnotatedFors:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    return v0

    .line 523
    .end local v1    # "af":Ljavax/lang/model/element/AnnotationMirror;
    :cond_5
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    const-string v2, "Call of QualifierDefaults.isElementAnnotatedForThisChecker with null"

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private nearestEnclosingExceptLocal(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;
    .locals 10
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 379
    iget-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 380
    .local v0, "path":Lcom/sun/source/util/TreePath;
    if-nez v0, :cond_1

    .line 381
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v1, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getEnclosingElementForArtificialTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v1

    .line 382
    .local v1, "element":Ljavax/lang/model/element/Element;
    if-eqz v1, :cond_0

    .line 383
    return-object v1

    .line 385
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v2

    return-object v2

    .line 389
    .end local v1    # "element":Ljavax/lang/model/element/Element;
    :cond_1
    const/4 v1, 0x0

    .line 391
    .local v1, "prev":Lcom/sun/source/tree/Tree;
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/Tree;

    .line 392
    .local v3, "t":Lcom/sun/source/tree/Tree;
    sget-object v4, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 421
    :pswitch_0
    move-object v2, v3

    check-cast v2, Lcom/sun/source/tree/ClassTree;

    invoke-static {v2}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/ClassTree;)Ljavax/lang/model/element/TypeElement;

    move-result-object v2

    return-object v2

    .line 416
    :pswitch_1
    move-object v2, v3

    check-cast v2, Lcom/sun/source/tree/MethodTree;

    invoke-static {v2}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    return-object v2

    .line 394
    :pswitch_2
    move-object v4, v3

    check-cast v4, Lcom/sun/source/tree/VariableTree;

    .line 395
    .local v4, "vtree":Lcom/sun/source/tree/VariableTree;
    invoke-interface {v4}, Lcom/sun/source/tree/VariableTree;->getInitializer()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v5

    .line 396
    .local v5, "vtreeInit":Lcom/sun/source/tree/ExpressionTree;
    if-eqz v5, :cond_2

    if-ne v1, v5, :cond_2

    .line 397
    move-object v6, v3

    check-cast v6, Lcom/sun/source/tree/VariableTree;

    invoke-static {v6}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/VariableTree;)Ljavax/lang/model/element/VariableElement;

    move-result-object v6

    .line 398
    .local v6, "elt":Ljavax/lang/model/element/Element;
    iget-object v7, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    const-class v8, Lorg/checkerframework/framework/qual/DefaultQualifier;

    .line 399
    invoke-virtual {v7, v6, v8}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v7

    .line 400
    .local v7, "d":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v8, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    const-class v9, Lorg/checkerframework/framework/qual/DefaultQualifiers;

    .line 401
    invoke-virtual {v8, v6, v9}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    .line 403
    .local v8, "ds":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v7, :cond_2

    if-nez v8, :cond_2

    .line 404
    goto :goto_1

    .line 407
    .end local v6    # "elt":Ljavax/lang/model/element/Element;
    .end local v7    # "d":Ljavax/lang/model/element/AnnotationMirror;
    .end local v8    # "ds":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v6

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->MODIFIERS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v6, v7, :cond_3

    .line 412
    goto :goto_1

    .line 414
    :cond_3
    move-object v2, v3

    check-cast v2, Lcom/sun/source/tree/VariableTree;

    invoke-static {v2}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/VariableTree;)Ljavax/lang/model/element/VariableElement;

    move-result-object v2

    return-object v2

    .line 424
    .end local v4    # "vtree":Lcom/sun/source/tree/VariableTree;
    .end local v5    # "vtreeInit":Lcom/sun/source/tree/ExpressionTree;
    :goto_1
    move-object v1, v3

    .line 425
    .end local v3    # "t":Lcom/sun/source/tree/Tree;
    goto :goto_0

    .line 427
    :cond_4
    const/4 v2, 0x0

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static validLocationsForUncheckedCodeDefaults()[Lorg/checkerframework/framework/qual/TypeUseLocation;
    .locals 1

    .line 151
    sget-object v0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->validUncheckedCodeDefaultLocations:[Lorg/checkerframework/framework/qual/TypeUseLocation;

    return-object v0
.end method


# virtual methods
.method public addCheckedCodeDefault(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V
    .locals 2
    .param p1, "absoluteDefaultAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "location"    # Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 262
    iget-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->checkedCodeDefaults:Lorg/checkerframework/framework/util/defaults/DefaultSet;

    invoke-direct {p0, v0, p1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->checkDuplicates(Lorg/checkerframework/framework/util/defaults/DefaultSet;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 263
    iget-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->checkedCodeDefaults:Lorg/checkerframework/framework/util/defaults/DefaultSet;

    new-instance v1, Lorg/checkerframework/framework/util/defaults/Default;

    invoke-direct {v1, p1, p2}, Lorg/checkerframework/framework/util/defaults/Default;-><init>(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/util/defaults/DefaultSet;->add(Ljava/lang/Object;)Z

    .line 264
    return-void
.end method

.method public addCheckedCodeDefaults(Ljavax/lang/model/element/AnnotationMirror;[Lorg/checkerframework/framework/qual/TypeUseLocation;)V
    .locals 3
    .param p1, "absoluteDefaultAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "locations"    # [Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 285
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 286
    .local v2, "location":Lorg/checkerframework/framework/qual/TypeUseLocation;
    invoke-virtual {p0, p1, v2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->addCheckedCodeDefault(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 285
    .end local v2    # "location":Lorg/checkerframework/framework/qual/TypeUseLocation;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    :cond_0
    return-void
.end method

.method public addClimbStandardDefaults()V
    .locals 11

    .line 231
    iget-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 232
    .local v0, "qualHierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v1

    .line 233
    .local v1, "tops":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getBottomAnnotations()Ljava/util/Set;

    move-result-object v2

    .line 235
    .local v2, "bottoms":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    sget-object v3, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->STANDARD_CLIMB_DEFAULTS_TOP:[Lorg/checkerframework/framework/qual/TypeUseLocation;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    .line 236
    .local v7, "loc":Lorg/checkerframework/framework/qual/TypeUseLocation;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/lang/model/element/AnnotationMirror;

    .line 237
    .local v9, "top":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v10, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->checkedCodeDefaults:Lorg/checkerframework/framework/util/defaults/DefaultSet;

    invoke-direct {p0, v10, v9, v7}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->conflictsWithExistingDefaults(Lorg/checkerframework/framework/util/defaults/DefaultSet;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 240
    invoke-virtual {p0, v9, v7}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->addCheckedCodeDefault(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 242
    .end local v9    # "top":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_1

    .line 235
    .end local v7    # "loc":Lorg/checkerframework/framework/qual/TypeUseLocation;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 245
    :cond_2
    sget-object v3, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->STANDARD_CLIMB_DEFAULTS_BOTTOM:[Lorg/checkerframework/framework/qual/TypeUseLocation;

    array-length v4, v3

    :goto_2
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    .line 246
    .local v6, "loc":Lorg/checkerframework/framework/qual/TypeUseLocation;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/AnnotationMirror;

    .line 247
    .local v8, "bottom":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v9, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->checkedCodeDefaults:Lorg/checkerframework/framework/util/defaults/DefaultSet;

    invoke-direct {p0, v9, v8, v6}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->conflictsWithExistingDefaults(Lorg/checkerframework/framework/util/defaults/DefaultSet;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 250
    invoke-virtual {p0, v8, v6}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->addCheckedCodeDefault(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 252
    .end local v8    # "bottom":Ljavax/lang/model/element/AnnotationMirror;
    :cond_3
    goto :goto_3

    .line 245
    .end local v6    # "loc":Lorg/checkerframework/framework/qual/TypeUseLocation;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 254
    :cond_5
    return-void
.end method

.method public addElementDefault(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V
    .locals 2
    .param p1, "elem"    # Ljavax/lang/model/element/Element;
    .param p2, "elementDefaultAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "location"    # Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 293
    iget-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->elementDefaults:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/util/defaults/DefaultSet;

    .line 294
    .local v0, "prevset":Lorg/checkerframework/framework/util/defaults/DefaultSet;
    if-eqz v0, :cond_0

    .line 295
    invoke-direct {p0, v0, p2, p3}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->checkDuplicates(Lorg/checkerframework/framework/util/defaults/DefaultSet;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    goto :goto_0

    .line 297
    :cond_0
    new-instance v1, Lorg/checkerframework/framework/util/defaults/DefaultSet;

    invoke-direct {v1}, Lorg/checkerframework/framework/util/defaults/DefaultSet;-><init>()V

    move-object v0, v1

    .line 299
    :goto_0
    new-instance v1, Lorg/checkerframework/framework/util/defaults/Default;

    invoke-direct {v1, p2, p3}, Lorg/checkerframework/framework/util/defaults/Default;-><init>(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/util/defaults/DefaultSet;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->elementDefaults:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    return-void
.end method

.method public addUncheckedCodeDefault(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V
    .locals 2
    .param p1, "uncheckedDefaultAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "location"    # Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 269
    iget-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->uncheckedCodeDefaults:Lorg/checkerframework/framework/util/defaults/DefaultSet;

    invoke-direct {p0, v0, p1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->checkDuplicates(Lorg/checkerframework/framework/util/defaults/DefaultSet;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 270
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->checkIsValidUncheckedCodeLocation(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 272
    iget-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->uncheckedCodeDefaults:Lorg/checkerframework/framework/util/defaults/DefaultSet;

    new-instance v1, Lorg/checkerframework/framework/util/defaults/Default;

    invoke-direct {v1, p1, p2}, Lorg/checkerframework/framework/util/defaults/Default;-><init>(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/util/defaults/DefaultSet;->add(Ljava/lang/Object;)Z

    .line 273
    return-void
.end method

.method public addUncheckedCodeDefaults(Ljavax/lang/model/element/AnnotationMirror;[Lorg/checkerframework/framework/qual/TypeUseLocation;)V
    .locals 3
    .param p1, "absoluteDefaultAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "locations"    # [Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 278
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 279
    .local v2, "location":Lorg/checkerframework/framework/qual/TypeUseLocation;
    invoke-virtual {p0, p1, v2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->addUncheckedCodeDefault(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 278
    .end local v2    # "location":Lorg/checkerframework/framework/qual/TypeUseLocation;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    :cond_0
    return-void
.end method

.method public addUncheckedStandardDefaults()V
    .locals 11

    .line 206
    iget-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 207
    .local v0, "qualHierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v1

    .line 208
    .local v1, "tops":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getBottomAnnotations()Ljava/util/Set;

    move-result-object v2

    .line 210
    .local v2, "bottoms":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    sget-object v3, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->STANDARD_UNCHECKED_DEFAULTS_TOP:[Lorg/checkerframework/framework/qual/TypeUseLocation;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    .line 212
    .local v7, "loc":Lorg/checkerframework/framework/qual/TypeUseLocation;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/lang/model/element/AnnotationMirror;

    .line 213
    .local v9, "top":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v10, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->uncheckedCodeDefaults:Lorg/checkerframework/framework/util/defaults/DefaultSet;

    invoke-direct {p0, v10, v9, v7}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->conflictsWithExistingDefaults(Lorg/checkerframework/framework/util/defaults/DefaultSet;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 214
    invoke-virtual {p0, v9, v7}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->addUncheckedCodeDefault(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 216
    .end local v9    # "top":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_1

    .line 210
    .end local v7    # "loc":Lorg/checkerframework/framework/qual/TypeUseLocation;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 219
    :cond_2
    sget-object v3, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->STANDARD_UNCHECKED_DEFAULTS_BOTTOM:[Lorg/checkerframework/framework/qual/TypeUseLocation;

    array-length v4, v3

    :goto_2
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    .line 220
    .local v6, "loc":Lorg/checkerframework/framework/qual/TypeUseLocation;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/AnnotationMirror;

    .line 222
    .local v8, "bottom":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v9, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->uncheckedCodeDefaults:Lorg/checkerframework/framework/util/defaults/DefaultSet;

    invoke-direct {p0, v9, v8, v6}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->conflictsWithExistingDefaults(Lorg/checkerframework/framework/util/defaults/DefaultSet;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 223
    invoke-virtual {p0, v8, v6}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->addUncheckedCodeDefault(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 225
    .end local v8    # "bottom":Ljavax/lang/model/element/AnnotationMirror;
    :cond_3
    goto :goto_3

    .line 219
    .end local v6    # "loc":Lorg/checkerframework/framework/qual/TypeUseLocation;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 227
    :cond_5
    return-void
.end method

.method public annotate(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 0
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 365
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->applyDefaults(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 366
    return-void
.end method

.method public annotate(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 0
    .param p1, "elt"    # Ljavax/lang/model/element/Element;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 355
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->applyDefaultsElement(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 356
    return-void
.end method

.method public applyUncheckedCodeDefaults(Ljavax/lang/model/element/Element;)Z
    .locals 5
    .param p1, "annotationScope"    # Ljavax/lang/model/element/Element;

    .line 637
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 638
    return v0

    .line 641
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->uncheckedCodeDefaults:Lorg/checkerframework/framework/util/defaults/DefaultSet;

    invoke-virtual {v1}, Lorg/checkerframework/framework/util/defaults/DefaultSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 642
    return v0

    .line 651
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v1, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isFromStubFile(Ljavax/lang/model/element/Element;)Z

    move-result v1

    .line 652
    .local v1, "isFromStubFile":Z
    nop

    .line 653
    invoke-static {p1}, Lorg/checkerframework/javacutil/ElementUtils;->isElementFromByteCode(Ljavax/lang/model/element/Element;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 654
    invoke-virtual {v2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->declarationFromElement(Ljavax/lang/model/element/Element;)Lcom/sun/source/tree/Tree;

    move-result-object v2

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v0

    .line 656
    .local v2, "isBytecode":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 657
    iget-boolean v4, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->useUncheckedCodeDefaultsBytecode:Z

    if-eqz v4, :cond_3

    .line 658
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->isElementAnnotatedForThisChecker(Ljavax/lang/model/element/Element;)Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    nop

    .line 657
    :goto_1
    return v0

    .line 659
    :cond_4
    if-eqz v1, :cond_5

    .line 666
    return v0

    .line 667
    :cond_5
    iget-boolean v4, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->useUncheckedCodeDefaultsSource:Z

    if-eqz v4, :cond_6

    .line 668
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->isElementAnnotatedForThisChecker(Ljavax/lang/model/element/Element;)Z

    move-result v0

    xor-int/2addr v0, v3

    return v0

    .line 670
    :cond_6
    return v0
.end method

.method protected createDefaultApplierElement(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;
    .locals 1
    .param p1, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "annotationScope"    # Ljavax/lang/model/element/Element;
    .param p3, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p4, "applyToTypeVar"    # Z

    .line 713
    new-instance v0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$DefaultApplierElement;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)V

    return-object v0
.end method

.method public hasDefaultsForCheckedCode()Z
    .locals 4

    .line 196
    iget-object v0, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->checkedCodeDefaults:Lorg/checkerframework/framework/util/defaults/DefaultSet;

    invoke-virtual {v0}, Lorg/checkerframework/framework/util/defaults/DefaultSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/util/defaults/Default;

    .line 197
    .local v1, "def":Lorg/checkerframework/framework/util/defaults/Default;
    iget-object v2, v1, Lorg/checkerframework/framework/util/defaults/Default;->location:Lorg/checkerframework/framework/qual/TypeUseLocation;

    sget-object v3, Lorg/checkerframework/framework/qual/TypeUseLocation;->OTHERWISE:Lorg/checkerframework/framework/qual/TypeUseLocation;

    if-eq v2, v3, :cond_1

    iget-object v2, v1, Lorg/checkerframework/framework/util/defaults/Default;->location:Lorg/checkerframework/framework/qual/TypeUseLocation;

    sget-object v3, Lorg/checkerframework/framework/qual/TypeUseLocation;->ALL:Lorg/checkerframework/framework/qual/TypeUseLocation;

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 200
    .end local v1    # "def":Lorg/checkerframework/framework/util/defaults/Default;
    :cond_0
    goto :goto_0

    .line 198
    .restart local v1    # "def":Lorg/checkerframework/framework/util/defaults/Default;
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 201
    .end local v1    # "def":Lorg/checkerframework/framework/util/defaults/Default;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Checked code defaults: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->checkedCodeDefaults:Lorg/checkerframework/framework/util/defaults/DefaultSet;

    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, "Unchecked code defaults: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->uncheckedCodeDefaults:Lorg/checkerframework/framework/util/defaults/DefaultSet;

    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, "useUncheckedCodeDefaultsSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-boolean v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->useUncheckedCodeDefaultsSource:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 183
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, "useUncheckedCodeDefaultsBytecode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-boolean v1, p0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->useUncheckedCodeDefaultsBytecode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 186
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
