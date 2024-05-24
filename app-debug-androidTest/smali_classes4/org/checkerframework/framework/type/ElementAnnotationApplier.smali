.class public Lorg/checkerframework/framework/type/ElementAnnotationApplier;
.super Ljava/lang/Object;
.source "ElementAnnotationApplier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/type/ElementAnnotationApplier$TypeVarAnnotator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "x1"    # Ljavax/lang/model/element/Element;
    .param p2, "x2"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 46
    invoke-static {p0, p1, p2}, Lorg/checkerframework/framework/type/ElementAnnotationApplier;->applyInternal(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    return-void
.end method

.method public static annotateSupers(Ljava/util/List;Ljavax/lang/model/element/TypeElement;)V
    .locals 2
    .param p1, "subtypeElement"    # Ljavax/lang/model/element/TypeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            ">;",
            "Ljavax/lang/model/element/TypeElement;",
            ")V"
        }
    .end annotation

    .line 171
    .local p0, "supertypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    :try_start_0
    invoke-static {p0, p1}, Lorg/checkerframework/framework/util/element/SuperTypeApplier;->annotateSupers(Ljava/util/List;Ljavax/lang/model/element/TypeElement;)V
    :try_end_0
    .catch Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    iget-object v1, v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-static {p1, v1}, Lorg/checkerframework/framework/type/ElementAnnotationApplier;->reportInvalidLocation(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 175
    .end local v0    # "e":Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
    :goto_0
    return-void
.end method

.method public static apply(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 2
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .param p2, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 79
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/checkerframework/framework/type/ElementAnnotationApplier;->applyInternal(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    :try_end_0
    .catch Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
    invoke-static {p1, p2}, Lorg/checkerframework/framework/type/ElementAnnotationApplier;->reportInvalidLocation(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 84
    .end local v0    # "e":Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
    :goto_0
    new-instance v0, Lorg/checkerframework/framework/type/ElementAnnotationApplier$TypeVarAnnotator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/ElementAnnotationApplier$TypeVarAnnotator;-><init>(Lorg/checkerframework/framework/type/ElementAnnotationApplier$1;)V

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/framework/type/ElementAnnotationApplier$TypeVarAnnotator;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method private static applyInternal(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 3
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "element"    # Ljavax/lang/model/element/Element;
    .param p2, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException;
        }
    .end annotation

    .line 115
    if-eqz p1, :cond_9

    .line 118
    invoke-static {p0, p1}, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->accepts(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-static {p0, p1, p2}, Lorg/checkerframework/framework/util/element/TypeVarUseApplier;->apply(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-static {p0, p1}, Lorg/checkerframework/framework/util/element/VariableApplier;->accepts(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->LOCAL_VARIABLE:Ljavax/lang/model/element/ElementKind;

    if-eq v0, v1, :cond_7

    .line 127
    invoke-static {p0, p1}, Lorg/checkerframework/framework/util/element/VariableApplier;->apply(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)V

    goto :goto_0

    .line 130
    :cond_1
    invoke-static {p0, p1}, Lorg/checkerframework/framework/util/element/MethodApplier;->accepts(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    invoke-static {p0, p1, p2}, Lorg/checkerframework/framework/util/element/MethodApplier;->apply(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    goto :goto_0

    .line 133
    :cond_2
    invoke-static {p0, p1}, Lorg/checkerframework/framework/util/element/TypeDeclarationApplier;->accepts(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    invoke-static {p0, p1, p2}, Lorg/checkerframework/framework/util/element/TypeDeclarationApplier;->apply(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    goto :goto_0

    .line 136
    :cond_3
    invoke-static {p0, p1}, Lorg/checkerframework/framework/util/element/ClassTypeParamApplier;->accepts(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-static {v0, p1, p2}, Lorg/checkerframework/framework/util/element/ClassTypeParamApplier;->apply(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    goto :goto_0

    .line 139
    :cond_4
    invoke-static {p0, p1}, Lorg/checkerframework/framework/util/element/MethodTypeParamApplier;->accepts(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 140
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-static {v0, p1, p2}, Lorg/checkerframework/framework/util/element/MethodTypeParamApplier;->apply(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    goto :goto_0

    .line 142
    :cond_5
    invoke-static {p0, p1}, Lorg/checkerframework/framework/util/element/ParamApplier;->accepts(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 143
    invoke-static {p0, p1, p2}, Lorg/checkerframework/framework/util/element/ParamApplier;->apply(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    goto :goto_0

    .line 145
    :cond_6
    invoke-static {p1}, Lorg/checkerframework/framework/type/ElementAnnotationApplier;->isCaptureConvertedTypeVar(Ljavax/lang/model/element/Element;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 158
    :cond_7
    :goto_0
    return-void

    .line 149
    :cond_8
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ElementAnnotationUtil.apply: illegal argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] with type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_9
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "ElementAnnotationUtil.apply: element cannot be null"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getParamAndLambdaTree(Ljavax/lang/model/element/VariableElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/javacutil/Pair;
    .locals 4
    .param p0, "varEle"    # Ljavax/lang/model/element/VariableElement;
    .param p1, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/VariableElement;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            ")",
            "Lorg/checkerframework/javacutil/Pair<",
            "Lcom/sun/source/tree/VariableTree;",
            "Lcom/sun/source/tree/LambdaExpressionTree;",
            ">;"
        }
    .end annotation

    .line 188
    invoke-virtual {p1, p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->declarationFromElement(Ljavax/lang/model/element/Element;)Lcom/sun/source/tree/Tree;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/VariableTree;

    .line 190
    .local v0, "paramDecl":Lcom/sun/source/tree/VariableTree;
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 192
    .local v1, "parentTree":Lcom/sun/source/tree/Tree;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->LAMBDA_EXPRESSION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_0

    .line 193
    move-object v2, v1

    check-cast v2, Lcom/sun/source/tree/LambdaExpressionTree;

    invoke-static {v0, v2}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v2

    return-object v2

    .line 197
    .end local v1    # "parentTree":Lcom/sun/source/tree/Tree;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static isCaptureConvertedTypeVar(Ljavax/lang/model/element/Element;)Z
    .locals 3
    .param p0, "element"    # Ljavax/lang/model/element/Element;

    .line 207
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 208
    .local v0, "enclosure":Ljavax/lang/model/element/Element;
    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:Lcom/sun/tools/javac/code/Kinds$Kind;

    sget-object v2, Lcom/sun/tools/javac/code/Kinds$Kind;->NIL:Lcom/sun/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static reportInvalidLocation(Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 4
    .param p0, "element"    # Ljavax/lang/model/element/Element;
    .param p1, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 89
    move-object v0, p0

    .line 90
    .local v0, "report":Ljavax/lang/model/element/Element;
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_0

    .line 91
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 99
    :cond_0
    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v2, "ignoreInvalidAnnotationLocations"

    invoke-virtual {v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 103
    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->getVerboseName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 101
    const-string v3, "invalid.annotation.location.bytecode"

    invoke-static {v3, v2}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v2

    .line 100
    invoke-virtual {v1, v2, p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 106
    :cond_1
    return-void
.end method
