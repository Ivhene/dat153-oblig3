.class public Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor;
.super Lorg/checkerframework/common/basetype/BaseTypeVisitor;
.source "I18nFormatterVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
        "Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 0
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 29
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 30
    return-void
.end method

.method private checkInvocationFormatFor(Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;)V
    .locals 14
    .param p1, "fc"    # Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;

    .line 47
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    .line 48
    .local v0, "tu":Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;
    invoke-virtual {p1}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->getFormatType()Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;

    move-result-object v1

    .line 52
    .local v1, "type":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;>;"
    sget-object v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor$1;->$SwitchMap$org$checkerframework$checker$i18nformatter$I18nFormatterTreeUtil$FormatType:[I

    invoke-virtual {v1}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;->value()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;

    invoke-virtual {v3}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 63
    :pswitch_0
    invoke-virtual {p1}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->getInvocationType()Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;

    move-result-object v2

    .line 64
    .local v2, "invc":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;>;"
    invoke-virtual {p1}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->getFormatCategories()[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    move-result-object v4

    .line 65
    .local v4, "formatCats":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    sget-object v5, Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor$1;->$SwitchMap$org$checkerframework$checker$formatter$FormatterTreeUtil$InvocationType:[I

    invoke-virtual {v2}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;->value()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;

    invoke-virtual {v6}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const-string v6, "i18nformat.argument.unused"

    packed-switch v5, :pswitch_data_1

    .line 112
    goto/16 :goto_3

    .line 104
    :pswitch_1
    array-length v5, v4

    move v7, v3

    :goto_0
    if-ge v7, v5, :cond_1

    aget-object v8, v4, v7

    .line 105
    .local v8, "cat":Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    sget-object v9, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->UNUSED:Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    if-ne v8, v9, :cond_0

    .line 106
    const-string v9, ""

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v2, v6, v9}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->warning(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    .end local v8    # "cat":Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 109
    :cond_1
    const-string v5, "i18nformat.indirect.arguments"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v5, v3}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->warning(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    goto/16 :goto_3

    .line 67
    :pswitch_2
    invoke-virtual {p1}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->getParamTypes()[Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;

    move-result-object v3

    .line 68
    .local v3, "paramTypes":[Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "[Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<Ljavax/lang/model/type/TypeMirror;>;"
    array-length v5, v3

    .line 69
    .local v5, "paraml":I
    array-length v7, v4

    .line 74
    .local v7, "formatl":I
    if-ge v5, v7, :cond_2

    .line 75
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "i18nformat.missing.arguments"

    invoke-virtual {v0, v2, v9, v8}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->warning(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :cond_2
    if-le v5, v7, :cond_3

    .line 78
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "i18nformat.excess.arguments"

    invoke-virtual {v0, v2, v9, v8}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->warning(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :cond_3
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_5

    if-ge v8, v5, :cond_5

    .line 81
    aget-object v9, v4, v8

    .line 82
    .local v9, "formatCat":Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    aget-object v10, v3, v8

    .line 83
    .local v10, "param":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<Ljavax/lang/model/type/TypeMirror;>;"
    invoke-virtual {v10}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;->value()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavax/lang/model/type/TypeMirror;

    .line 84
    .local v11, "paramType":Ljavax/lang/model/type/TypeMirror;
    sget-object v12, Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor$1;->$SwitchMap$org$checkerframework$checker$i18nformatter$qual$I18nConversionCategory:[I

    invoke-virtual {v9}, Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_2

    .line 91
    invoke-virtual {p1, v9, v11}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->isValidParameter(Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 92
    const-string v12, "argument.type.incompatible"

    filled-new-array {v11, v9}, [Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v0, v10, v12, v13}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->failure(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 89
    :pswitch_3
    goto :goto_2

    .line 86
    :pswitch_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v0, v10, v6, v12}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->warning(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    nop

    .line 80
    .end local v9    # "formatCat":Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .end local v10    # "param":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<Ljavax/lang/model/type/TypeMirror;>;"
    .end local v11    # "paramType":Ljavax/lang/model/type/TypeMirror;
    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 100
    .end local v8    # "i":I
    :cond_5
    goto :goto_3

    .line 57
    .end local v2    # "invc":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<Lorg/checkerframework/checker/formatter/FormatterTreeUtil$InvocationType;>;"
    .end local v3    # "paramTypes":[Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "[Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<Ljavax/lang/model/type/TypeMirror;>;"
    .end local v4    # "formatCats":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .end local v5    # "paraml":I
    .end local v7    # "formatl":I
    :pswitch_5
    invoke-virtual {p1}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->isValidFormatForInvocation()Z

    move-result v2

    if-nez v2, :cond_6

    .line 58
    invoke-virtual {p1}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->getInvalidInvocationType()Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;

    move-result-object v2

    .line 59
    .local v2, "failureType":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;>;"
    const-string v4, "i18nformat.invalid.formatfor"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4, v3}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->failure(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    .end local v2    # "failureType":Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;, "Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result<Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$FormatType;>;"
    goto :goto_3

    .line 54
    :pswitch_6
    invoke-virtual {p1}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;->getInvalidError()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "i18nformat.string.invalid"

    invoke-virtual {v0, v1, v3, v2}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->failure(Lorg/checkerframework/checker/formatter/FormatterTreeUtil$Result;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    nop

    .line 118
    :cond_6
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V
    .locals 7
    .param p1, "varType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "valueType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "valueTree"    # Lcom/sun/source/tree/Tree;
    .param p4, "errorKey"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NUNKNOWNFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 127
    .local v0, "rhs":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v1, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NUNKNOWNFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 132
    .local v1, "lhs":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 134
    invoke-static {v0, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 135
    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    iget-object v2, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    .line 137
    invoke-virtual {v2, v0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->formatAnnotationToCategories(Ljavax/lang/model/element/AnnotationMirror;)[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    move-result-object v2

    .line 138
    .local v2, "rhsArgTypes":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    iget-object v3, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v3, v3, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    .line 139
    invoke-virtual {v3, v1}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->formatAnnotationToCategories(Ljavax/lang/model/element/AnnotationMirror;)[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    move-result-object v3

    .line 141
    .local v3, "lhsArgTypes":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    array-length v4, v2

    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 145
    iget-object v4, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 148
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v5

    .line 149
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 146
    const-string v6, "i18nformat.missing.arguments"

    invoke-static {v6, v5}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v5

    .line 145
    invoke-virtual {v4, v5, p3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_0

    .line 151
    :cond_0
    array-length v4, v2

    array-length v5, v3

    if-le v4, v5, :cond_1

    .line 155
    iget-object v4, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 158
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v5

    .line 159
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 156
    const-string v6, "i18nformat.excess.arguments"

    invoke-static {v6, v5}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v5

    .line 155
    invoke-virtual {v4, v5, p3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 168
    .end local v2    # "rhsArgTypes":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .end local v3    # "lhsArgTypes":[Lorg/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public bridge synthetic visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 34
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;

    .line 35
    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->getFirstNodeOfKindForTree(Lcom/sun/source/tree/Tree;Ljava/lang/Class;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;

    .line 36
    .local v0, "nodeNode":Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    iget-object v1, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    .line 37
    .local v1, "tu":Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;
    iget-object v2, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;

    invoke-virtual {v1, p1, v0, v2}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;->createFormatForCall(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;)Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;

    move-result-object v2

    .line 38
    .local v2, "fc":Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;
    if-eqz v2, :cond_0

    .line 39
    invoke-direct {p0, v2}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterVisitor;->checkInvocationFormatFor(Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil$I18nFormatCall;)V

    .line 40
    return-object p2

    .line 42
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v3

    return-object v3
.end method
