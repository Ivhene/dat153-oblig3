.class public Lorg/checkerframework/framework/util/element/ParamApplier;
.super Lorg/checkerframework/framework/util/element/IndexedElementAnnotationApplier;
.source "ParamApplier.java"


# static fields
.field public static final RECEIVER_PARAM_INDEX:I = -0x80000000


# instance fields
.field private final enclosingMethod:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

.field private final isLambdaParam:Z

.field private final lambdaParamIndex:Ljava/lang/Integer;

.field private final lambdaTree:Lcom/sun/source/tree/LambdaExpressionTree;


# direct methods
.method constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 5
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "element"    # Ljavax/lang/model/element/Element;
    .param p3, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 45
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/util/element/IndexedElementAnnotationApplier;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)V

    .line 46
    invoke-static {p2}, Lorg/checkerframework/framework/util/element/ParamApplier;->getParentMethod(Ljavax/lang/model/element/Element;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/util/element/ParamApplier;->enclosingMethod:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 48
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->INSTANCE_INIT:Ljavax/lang/model/element/ElementKind;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->STATIC_INIT:Ljavax/lang/model/element/ElementKind;

    if-eq v1, v2, :cond_0

    .line 50
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getParameters()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iput-object v4, p0, Lorg/checkerframework/framework/util/element/ParamApplier;->lambdaTree:Lcom/sun/source/tree/LambdaExpressionTree;

    .line 52
    iput-boolean v3, p0, Lorg/checkerframework/framework/util/element/ParamApplier;->isLambdaParam:Z

    .line 53
    iput-object v4, p0, Lorg/checkerframework/framework/util/element/ParamApplier;->lambdaParamIndex:Ljava/lang/Integer;

    goto :goto_0

    .line 56
    :cond_0
    move-object v0, p2

    check-cast v0, Ljavax/lang/model/element/VariableElement;

    .line 57
    invoke-static {v0, p3}, Lorg/checkerframework/framework/type/ElementAnnotationApplier;->getParamAndLambdaTree(Ljavax/lang/model/element/VariableElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v0

    .line 60
    .local v0, "paramToEnclosingLambda":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/VariableTree;Lcom/sun/source/tree/LambdaExpressionTree;>;"
    if-eqz v0, :cond_1

    .line 61
    iget-object v1, v0, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/sun/source/tree/VariableTree;

    .line 62
    .local v1, "paramDecl":Lcom/sun/source/tree/VariableTree;
    iget-object v2, v0, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/sun/source/tree/LambdaExpressionTree;

    iput-object v2, p0, Lorg/checkerframework/framework/util/element/ParamApplier;->lambdaTree:Lcom/sun/source/tree/LambdaExpressionTree;

    .line 63
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/checkerframework/framework/util/element/ParamApplier;->isLambdaParam:Z

    .line 64
    invoke-interface {v2}, Lcom/sun/source/tree/LambdaExpressionTree;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/framework/util/element/ParamApplier;->lambdaParamIndex:Ljava/lang/Integer;

    .line 66
    .end local v1    # "paramDecl":Lcom/sun/source/tree/VariableTree;
    goto :goto_0

    .line 67
    :cond_1
    iput-object v4, p0, Lorg/checkerframework/framework/util/element/ParamApplier;->lambdaTree:Lcom/sun/source/tree/LambdaExpressionTree;

    .line 68
    iput-boolean v3, p0, Lorg/checkerframework/framework/util/element/ParamApplier;->isLambdaParam:Z

    .line 69
    iput-object v4, p0, Lorg/checkerframework/framework/util/element/ParamApplier;->lambdaParamIndex:Ljava/lang/Integer;

    .line 72
    .end local v0    # "paramToEnclosingLambda":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/VariableTree;Lcom/sun/source/tree/LambdaExpressionTree;>;"
    :goto_0
    return-void
.end method

.method public static accepts(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Z
    .locals 2
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "element"    # Ljavax/lang/model/element/Element;

    .line 36
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->PARAMETER:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static apply(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 1
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .param p2, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 30
    new-instance v0, Lorg/checkerframework/framework/util/element/ParamApplier;

    invoke-direct {v0, p0, p1, p2}, Lorg/checkerframework/framework/util/element/ParamApplier;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    invoke-virtual {v0}, Lorg/checkerframework/framework/util/element/ParamApplier;->extractAndApply()V

    .line 31
    return-void
.end method

.method public static getParentMethod(Ljavax/lang/model/element/Element;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .locals 3
    .param p0, "methodChildElem"    # Ljavax/lang/model/element/Element;

    .line 226
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    if-eqz v0, :cond_0

    .line 234
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    return-object v0

    .line 227
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Element is not a direct child of a MethodSymbol. Element ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parent ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 231
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isReceiver(Ljavax/lang/model/element/Element;)Z
    .locals 2
    .param p1, "element"    # Ljavax/lang/model/element/Element;

    .line 208
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->PARAMETER:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_0

    .line 209
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    const-string v1, "this"

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 208
    :goto_0
    return v0
.end method


# virtual methods
.method protected annotatedTargets()[Lcom/sun/tools/javac/code/TargetType;
    .locals 3

    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sun/tools/javac/code/TargetType;

    const/4 v1, 0x0

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_FORMAL_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_RECEIVER:Lcom/sun/tools/javac/code/TargetType;

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

    .line 239
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/ParamApplier;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v1, p0, Lorg/checkerframework/framework/util/element/ParamApplier;->element:Ljavax/lang/model/element/Element;

    .line 240
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v1

    .line 239
    invoke-static {v0, v1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->addDeclarationAnnotationsFromElement(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/List;)V

    .line 241
    invoke-super {p0}, Lorg/checkerframework/framework/util/element/IndexedElementAnnotationApplier;->extractAndApply()V

    .line 242
    return-void
.end method

.method public getElementIndex()I
    .locals 4

    .line 80
    iget-boolean v0, p0, Lorg/checkerframework/framework/util/element/ParamApplier;->isLambdaParam:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/ParamApplier;->lambdaParamIndex:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/ParamApplier;->element:Ljavax/lang/model/element/Element;

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/util/element/ParamApplier;->isReceiver(Ljavax/lang/model/element/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    const/high16 v0, -0x80000000

    return v0

    .line 88
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/ParamApplier;->enclosingMethod:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getParameters()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/util/element/ParamApplier;->element:Ljavax/lang/model/element/Element;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 89
    .local v0, "paramIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 99
    return v0

    .line 90
    :cond_2
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find parameter Element in parameter list. Parameter( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/framework/util/element/ParamApplier;->element:Ljavax/lang/model/element/Element;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) Parent ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/framework/util/element/ParamApplier;->enclosingMethod:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
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

    .line 146
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/ParamApplier;->enclosingMethod:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->getRawTypeAttributes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTypeCompoundIndex(Lcom/sun/tools/javac/code/Attribute$TypeCompound;)I
    .locals 1
    .param p1, "anno"    # Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    .line 105
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->getPosition()Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    move-result-object v0

    iget v0, v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->parameter_index:I

    return v0
.end method

.method protected handleTargeted(Ljava/util/List;)V
    .locals 4
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

    .line 192
    .local p1, "targeted":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v0, "formalParams":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sun/tools/javac/code/TargetType;

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->METHOD_RECEIVER:Lcom/sun/tools/javac/code/TargetType;

    aput-object v3, v1, v2

    .line 194
    invoke-static {p1, v0, v1}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->partitionByTargetType(Ljava/util/Collection;Ljava/util/List;[Lcom/sun/tools/javac/code/TargetType;)Ljava/util/Map;

    move-result-object v1

    .line 197
    .local v1, "targetToAnnos":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/tools/javac/code/TargetType;Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;>;"
    iget-object v2, p0, Lorg/checkerframework/framework/util/element/ParamApplier;->element:Ljavax/lang/model/element/Element;

    invoke-direct {p0, v2}, Lorg/checkerframework/framework/util/element/ParamApplier;->isReceiver(Ljavax/lang/model/element/Element;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lorg/checkerframework/framework/util/element/ParamApplier;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    sget-object v3, Lcom/sun/tools/javac/code/TargetType;->METHOD_RECEIVER:Lcom/sun/tools/javac/code/TargetType;

    .line 199
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 198
    invoke-static {v2, v3}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->annotateViaTypeAnnoPosition(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Collection;)V

    goto :goto_0

    .line 202
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/framework/util/element/ParamApplier;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-static {v2, v0}, Lorg/checkerframework/framework/util/element/ElementAnnotationUtil;->annotateViaTypeAnnoPosition(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Collection;)V

    .line 204
    :goto_0
    return-void
.end method

.method protected isAccepted()Z
    .locals 2

    .line 214
    iget-object v0, p0, Lorg/checkerframework/framework/util/element/ParamApplier;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v1, p0, Lorg/checkerframework/framework/util/element/ParamApplier;->element:Ljavax/lang/model/element/Element;

    invoke-static {v0, v1}, Lorg/checkerframework/framework/util/element/ParamApplier;->accepts(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Z

    move-result v0

    return v0
.end method

.method protected sift(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;)",
            "Ljava/util/Map<",
            "Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/Attribute$TypeCompound;",
            ">;>;"
        }
    .end annotation

    .line 153
    .local p1, "typeCompounds":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    nop

    .line 154
    invoke-super {p0, p1}, Lorg/checkerframework/framework/util/element/IndexedElementAnnotationApplier;->sift(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    .line 156
    .local v0, "targetClassToAnnos":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;>;"
    sget-object v1, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;->TARGETED:Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 157
    .local v1, "targeted":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    sget-object v2, Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;->VALID:Lorg/checkerframework/framework/util/element/TargetedElementAnnotationApplier$TargetClass;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 162
    .local v2, "valid":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/Attribute$TypeCompound;>;"
    const/4 v3, 0x0

    .line 163
    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 164
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Attribute$TypeCompound;->position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    iget-object v4, v4, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->onLambda:Lcom/sun/tools/javac/tree/JCTree$JCLambda;

    .line 165
    .local v4, "onLambda":Lcom/sun/source/tree/Tree;
    if-nez v4, :cond_1

    .line 166
    iget-boolean v5, p0, Lorg/checkerframework/framework/util/element/ParamApplier;->isLambdaParam:Z

    if-nez v5, :cond_0

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 169
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 173
    :cond_1
    iget-object v5, p0, Lorg/checkerframework/framework/util/element/ParamApplier;->lambdaTree:Lcom/sun/source/tree/LambdaExpressionTree;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 176
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/tools/javac/code/Attribute$TypeCompound;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    .end local v4    # "onLambda":Lcom/sun/source/tree/Tree;
    :goto_1
    goto :goto_0

    .line 181
    :cond_3
    return-object v0
.end method

.method protected validTargets()[Lcom/sun/tools/javac/code/TargetType;
    .locals 3

    .line 117
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/sun/tools/javac/code/TargetType;

    const/4 v1, 0x0

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_FORMAL_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_RETURN:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->THROWS:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_TYPE_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_TYPE_PARAMETER_BOUND:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->LOCAL_VARIABLE:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->RESOURCE_VARIABLE:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->EXCEPTION_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->NEW:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CAST:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->INSTANCEOF:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_INVOCATION_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_REFERENCE:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CONSTRUCTOR_REFERENCE:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->METHOD_REFERENCE_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sun/tools/javac/code/TargetType;->CLASS_EXTENDS:Lcom/sun/tools/javac/code/TargetType;

    aput-object v2, v0, v1

    return-object v0
.end method
