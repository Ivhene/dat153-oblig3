.class public Lorg/checkerframework/framework/util/element/VariableApplier;
.super Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;
.source "VariableApplier.java"


# static fields
.field private static final acceptedKinds:[Ljavax/lang/model/element/ElementKind;


# instance fields
.field private final varSymbol:Lcom/sun/tools/javac/code/Symbol$VarSymbol;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Ljavax/lang/model/element/ElementKind;

    const/4 v1, 0x0

    sget-object v2, Ljavax/lang/model/element/ElementKind;->LOCAL_VARIABLE:Ljavax/lang/model/element/ElementKind;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->RESOURCE_VARIABLE:Ljavax/lang/model/element/ElementKind;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljavax/lang/model/element/ElementKind;->EXCEPTION_PARAMETER:Ljavax/lang/model/element/ElementKind;

    aput-object v2, v0, v1

    sput-object v0, Lorg/checkerframework/framework/util/element/VariableApplier;->acceptedKinds:[Ljavax/lang/model/element/ElementKind;

    return-void
.end method

.method constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)V
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "element"    # Ljavax/lang/model/element/Element;

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)V

    .line 40
    move-object v0, p2

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iput-object v0, p0, Lorg/checkerframework/framework/util/element/VariableApplier;->varSymbol:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 42
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->UNION:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_1

    .line 43
    invoke-interface {p2}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->EXCEPTION_PARAMETER:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Union types only allowed for exception parameters. Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method public static accepts(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Z
    .locals 2
    .param p0, "typeMirror"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "element"    # Ljavax/lang/model/element/Element;

    .line 32
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/framework/util/element/VariableApplier;->acceptedKinds:[Ljavax/lang/model/element/ElementKind;

    invoke-static {v0, v1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->contains(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/lang/model/element/ElementKind;->isField()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 32
    :goto_1
    return v0
.end method

.method public static apply(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)V
    .locals 1
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 23
    new-instance v0, Lorg/checkerframework/framework/util/element/VariableApplier;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/framework/util/element/VariableApplier;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)V

    invoke-virtual {v0}, Lorg/checkerframework/framework/util/element/VariableApplier;->extractAndApply()V

    .line 24
    return-void
.end method


# virtual methods
.method protected annotatedTargets()[Lcom/sun/tools/javac/code/TargetType;
    .locals 3

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sun/tools/javac/code/TargetType;

    const/4 v1, 0x0

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->LOCAL_VARIABLE:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->RESOURCE_VARIABLE:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->EXCEPTION_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->FIELD:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public extractAndApply()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/VariableApplier;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v1, p0, Lorg/checkerframework/framework/util/element/VariableApplier;->varSymbol:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 101
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getAnnotationMirrors()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 100
    invoke-static {v0, v1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->addDeclarationAnnotationsFromElement(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V

    .line 102
    invoke-super {p0}, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier;->extractAndApply()V

    .line 103
    return-void
.end method

.method protected getRawTypeAttributes()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/VariableApplier;->varSymbol:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getRawTypeAttributes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected handleTargeted(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 94
    .local p1, "targeted":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/VariableApplier;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-static {v0, p1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->annotateViaTypeAnnoPosition(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Collection;)V

    .line 95
    return-void
.end method

.method protected isAccepted()Z
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/VariableApplier;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v1, p0, Lorg/checkerframework/framework/util/element/VariableApplier;->element:Ljavax/lang/model/element/Element;

    invoke-static {v0, v1}, Lorg/checkerframework/framework/util/element/VariableApplier;->accepts(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Z

    move-result v0

    return v0
.end method

.method protected validTargets()[Lcom/sun/tools/javac/code/TargetType;
    .locals 3

    .line 68
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sun/tools/javac/code/TargetType;

    const/4 v1, 0x0

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->NEW:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CAST:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->INSTANCEOF:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_INVOCATION_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_REFERENCE:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CONSTRUCTOR_REFERENCE:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_REFERENCE_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    return-object v0
.end method
