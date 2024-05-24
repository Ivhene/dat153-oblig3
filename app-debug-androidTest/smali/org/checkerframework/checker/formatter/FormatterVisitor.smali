.class public Lorg/checkerframework/checker/formatter/FormatterVisitor;
.super Lorg/checkerframework/common/basetype/BaseTypeVisitor;
.source "FormatterVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
        "Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 0
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 35
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 36
    return-void
.end method

.method private isWrappedFormatCall(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;)Z
    .locals 12
    .param p1, "fc"    # Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;

    .line 131
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v1, p1, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->node:Lcom/sun/source/tree/MethodInvocationTree;

    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingMethod(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/MethodTree;

    move-result-object v0

    .line 132
    .local v0, "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 133
    return v1

    .line 135
    :cond_0
    nop

    .line 136
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    .line 137
    .local v2, "enclosingMethodElement":Ljavax/lang/model/element/ExecutableElement;
    iget-object v3, p0, Lorg/checkerframework/checker/formatter/FormatterVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    const-class v4, Lorg/checkerframework/checker/formatter/qual/FormatMethod;

    .line 138
    invoke-virtual {v3, v2, v4}, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v1

    .line 140
    .local v3, "withinFormatMethod":Z
    :goto_0
    if-nez v3, :cond_2

    .line 141
    return v1

    .line 144
    :cond_2
    iget-object v5, p1, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->node:Lcom/sun/source/tree/MethodInvocationTree;

    invoke-interface {v5}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v5

    .line 145
    .local v5, "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {v0}, Lcom/sun/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v6

    .line 146
    .local v6, "params":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/VariableTree;>;"
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v7

    .line 149
    .local v7, "paramElements":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/VariableElement;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/source/tree/ExpressionTree;

    iget-object v9, p0, Lorg/checkerframework/checker/formatter/FormatterVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-static {v8, v9}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->isLocale(Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 150
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v5, v4, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 152
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 153
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/VariableElement;

    invoke-interface {v8}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v8

    const-string v9, "java.util.Locale"

    invoke-static {v8, v9}, Lorg/checkerframework/javacutil/TypesUtils;->isDeclaredOfName(Ljavax/lang/model/type/TypeMirror;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 154
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v6, v4, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    .line 157
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ne v8, v9, :cond_7

    .line 158
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 159
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/source/tree/ExpressionTree;

    .line 160
    .local v9, "arg":Lcom/sun/source/tree/ExpressionTree;
    instance-of v10, v9, Lcom/sun/source/tree/IdentifierTree;

    if-eqz v10, :cond_6

    move-object v10, v9

    check-cast v10, Lcom/sun/source/tree/IdentifierTree;

    .line 161
    invoke-interface {v10}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v10

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sun/source/tree/VariableTree;

    invoke-interface {v11}, Lcom/sun/source/tree/VariableTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v11

    if-eq v10, v11, :cond_5

    goto :goto_2

    .line 158
    .end local v9    # "arg":Lcom/sun/source/tree/ExpressionTree;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 162
    .restart local v9    # "arg":Lcom/sun/source/tree/ExpressionTree;
    :cond_6
    :goto_2
    return v1

    .line 166
    .end local v8    # "i":I
    .end local v9    # "arg":Lcom/sun/source/tree/ExpressionTree;
    :cond_7
    return v4
.end method


# virtual methods
.method protected commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V
    .locals 7
    .param p1, "varType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "valueType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "valueTree"    # Lcom/sun/source/tree/Tree;
    .param p4, "errorKey"    # Ljava/lang/String;

    .line 175
    invoke-super {p0, p1, p2, p3, p4}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->UNKNOWNFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 178
    .local v0, "rhs":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v1, p0, Lorg/checkerframework/checker/formatter/FormatterVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->UNKNOWNFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 184
    .local v1, "lhs":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/checkerframework/checker/formatter/FormatterVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->FORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 186
    invoke-static {v0, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/checkerframework/checker/formatter/FormatterVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->FORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 187
    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p0, Lorg/checkerframework/checker/formatter/FormatterVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;

    .line 189
    invoke-virtual {v2, v0}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->formatAnnotationToCategories(Ljavax/lang/model/element/AnnotationMirror;)[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v2

    .line 190
    .local v2, "rhsArgTypes":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    iget-object v3, p0, Lorg/checkerframework/checker/formatter/FormatterVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v3, v3, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;

    .line 191
    invoke-virtual {v3, v1}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->formatAnnotationToCategories(Ljavax/lang/model/element/AnnotationMirror;)[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v3

    .line 193
    .local v3, "lhsArgTypes":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    array-length v4, v2

    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 194
    iget-object v4, p0, Lorg/checkerframework/checker/formatter/FormatterVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 197
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v5

    .line 198
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 195
    const-string v6, "format.missing.arguments"

    invoke-static {v6, v5}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v5

    .line 194
    invoke-virtual {v4, v5, p3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 202
    .end local v2    # "rhsArgTypes":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .end local v3    # "lhsArgTypes":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    :cond_0
    return-void
.end method

.method public bridge synthetic visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/formatter/FormatterVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 18
    .param p1, "node"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 40
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/checkerframework/checker/formatter/FormatterVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;

    .line 41
    .local v2, "tu":Lorg/checkerframework/checker/formatter/FormatterTreeUtil;
    iget-object v3, v0, Lorg/checkerframework/checker/formatter/FormatterVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v2, v1, v3}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->isFormatCall(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 42
    new-instance v3, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;

    iget-object v4, v0, Lorg/checkerframework/checker/formatter/FormatterVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v4, v4, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lorg/checkerframework/checker/formatter/FormatterVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-direct {v3, v4, v1, v5}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;-><init>(Lorg/checkerframework/checker/formatter/FormatterTreeUtil;Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 44
    .local v3, "fc":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;
    invoke-virtual {v3}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->hasFormatAnnotation()Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;

    move-result-object v4

    .line 45
    .local v4, "errMissingFormat":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    .line 47
    invoke-direct {v0, v3}, Lorg/checkerframework/checker/formatter/FormatterVisitor;->isWrappedFormatCall(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_3

    .line 51
    :cond_0
    invoke-virtual {v4}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;->value()Ljava/lang/Object;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "format.string.invalid"

    invoke-virtual {v2, v4, v6, v5}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->failure(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 55
    :cond_1
    invoke-virtual {v3}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->getInvocationType()Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;

    move-result-object v5

    .line 56
    .local v5, "invc":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;>;"
    invoke-virtual {v3}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->getFormatCategories()[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v6

    .line 57
    .local v6, "formatCats":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    sget-object v7, Lorg/checkerframework/checker/formatter/FormatterVisitor$1;->$SwitchMap$org$checkerframework$checker$formatter$FormatterTreeUtil$InvocationType:[I

    invoke-virtual {v5}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;->value()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    invoke-virtual {v8}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const-string v8, "format.argument.unused"

    const-string v9, "format.specifier.null"

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_3

    .line 105
    :pswitch_0
    array-length v7, v6

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v7, :cond_4

    aget-object v12, v6, v11

    .line 106
    .local v12, "cat":Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    sget-object v13, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->NULL:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const-string v14, ""

    if-ne v12, v13, :cond_2

    .line 108
    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v2, v5, v9, v13}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->failure(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :cond_2
    sget-object v13, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    if-ne v12, v13, :cond_3

    .line 112
    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v2, v5, v8, v13}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->warning(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    .end local v12    # "cat":Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 116
    :cond_4
    const-string v7, "format.indirect.arguments"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v7, v8}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->warning(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 59
    :pswitch_1
    invoke-virtual {v3}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->getParamTypes()[Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;

    move-result-object v7

    .line 60
    .local v7, "paramTypes":[Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "[Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<Ljavax/lang/model/type/TypeMirror;>;"
    array-length v10, v7

    .line 61
    .local v10, "paraml":I
    array-length v11, v6

    .line 62
    .local v11, "formatl":I
    if-ge v10, v11, :cond_5

    .line 66
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "format.missing.arguments"

    invoke-virtual {v2, v5, v9, v8}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->failure(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 68
    :cond_5
    if-le v10, v11, :cond_6

    .line 70
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v12, v13}, [Ljava/lang/Object;

    move-result-object v12

    const-string v13, "format.excess.arguments"

    invoke-virtual {v2, v5, v13, v12}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->warning(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :cond_6
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v11, :cond_8

    .line 73
    aget-object v13, v6, v12

    .line 74
    .local v13, "formatCat":Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    aget-object v14, v7, v12

    .line 75
    .local v14, "param":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<Ljavax/lang/model/type/TypeMirror;>;"
    invoke-virtual {v14}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;->value()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavax/lang/model/type/TypeMirror;

    .line 77
    .local v15, "paramType":Ljavax/lang/model/type/TypeMirror;
    sget-object v16, Lorg/checkerframework/checker/formatter/FormatterVisitor$1;->$SwitchMap$org$checkerframework$checker$formatter$qual$ConversionCategory:[I

    invoke-virtual {v13}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->ordinal()I

    move-result v17

    aget v16, v16, v17

    const-string v0, " "

    packed-switch v16, :pswitch_data_1

    .line 89
    invoke-virtual {v3, v13, v15}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;->isValidParameter(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 91
    const-string v0, "argument.type.incompatible"

    filled-new-array {v15, v13}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v14, v0, v1}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->failure(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 87
    :pswitch_2
    goto :goto_2

    .line 84
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v12, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v14, v9, v0}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->failure(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    goto :goto_2

    .line 80
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v12, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v14, v8, v0}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->warning(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    nop

    .line 72
    .end local v13    # "formatCat":Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .end local v14    # "param":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<Ljavax/lang/model/type/TypeMirror;>;"
    .end local v15    # "paramType":Ljavax/lang/model/type/TypeMirror;
    :cond_7
    :goto_2
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_1

    .line 101
    .end local v12    # "i":I
    :cond_8
    nop

    .line 121
    .end local v3    # "fc":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$FormatCall;
    .end local v4    # "errMissingFormat":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<Ljava/lang/String;>;"
    .end local v5    # "invc":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;>;"
    .end local v6    # "formatCats":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .end local v7    # "paramTypes":[Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "[Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<Ljavax/lang/model/type/TypeMirror;>;"
    .end local v10    # "paraml":I
    .end local v11    # "formatl":I
    :cond_9
    :goto_3
    invoke-super/range {p0 .. p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
