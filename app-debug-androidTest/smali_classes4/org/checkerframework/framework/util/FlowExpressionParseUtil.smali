.class public Lorg/checkerframework/framework/util/FlowExpressionParseUtil;
.super Ljava/lang/Object;
.source "FlowExpressionParseUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;,
        Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;,
        Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;,
        Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;
    }
.end annotation


# static fields
.field protected static final ANCHORED_PARAMETER_PATTERN:Ljava/util/regex/Pattern;

.field protected static final PARAMETER_REGEX:Ljava/lang/String; = "#([1-9][0-9]*)"

.field private static final PARAMETER_REPLACEMENT_LENGTH:I

.field private static final PARMETER_REPLACEMENT:Ljava/lang/String; = "_param_"

.field protected static final UNANCHORED_PARAMETER_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    nop

    .line 97
    const-string v0, "^#([1-9][0-9]*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->ANCHORED_PARAMETER_PATTERN:Ljava/util/regex/Pattern;

    .line 100
    const-string v0, "#([1-9][0-9]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->UNANCHORED_PARAMETER_PATTERN:Ljava/util/regex/Pattern;

    .line 105
    const-string v0, "_param_"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->PARAMETER_REPLACEMENT_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 90
    invoke-static {p0, p1}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->constructParserException(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/type/TypeMirror;
    .locals 1
    .param p0, "x0"    # Ljavax/lang/model/type/DeclaredType;

    .line 90
    invoke-static {p0}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->getTypeOfEnclosingClass(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 90
    sget v0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->PARAMETER_REPLACEMENT_LENGTH:I

    return v0
.end method

.method private static constructParserException(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    .locals 4
    .param p0, "expr"    # Ljava/lang/String;
    .param p1, "explanation"    # Ljava/lang/String;

    .line 1095
    if-eqz p0, :cond_1

    .line 1098
    if-eqz p1, :cond_0

    .line 1101
    new-instance v0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "flowexpr.parse.error"

    invoke-direct {v0, v1, v3, v2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 1099
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Must have an explanation."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1096
    :cond_1
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Must have an expression."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getTypeOfEnclosingClass(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/type/TypeMirror;
    .locals 3
    .param p0, "type"    # Ljavax/lang/model/type/DeclaredType;

    .line 1013
    instance-of v0, p0, Lcom/sun/tools/javac/code/Type$ClassType;

    if-eqz v0, :cond_2

    .line 1016
    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 1018
    .local v0, "sym":Lcom/sun/tools/javac/code/Symbol;
    if-nez v0, :cond_0

    .line 1019
    sget-object v1, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    return-object v1

    .line 1022
    :cond_0
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    .line 1024
    .local v1, "cs":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    if-nez v1, :cond_1

    .line 1025
    sget-object v2, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    return-object v2

    .line 1028
    :cond_1
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->asType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    return-object v2

    .line 1030
    .end local v0    # "sym":Lcom/sun/tools/javac/code/Symbol;
    .end local v1    # "cs":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    :cond_2
    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->getEnclosingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public static internalReprOfVariable(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/VariableTree;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 6
    .param p0, "provider"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p1, "tree"    # Lcom/sun/source/tree/VariableTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
        }
    .end annotation

    .line 1036
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/VariableTree;)Ljavax/lang/model/element/VariableElement;

    move-result-object v0

    .line 1038
    .local v0, "elt":Ljavax/lang/model/element/Element;
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->LOCAL_VARIABLE:Ljavax/lang/model/element/ElementKind;

    if-eq v1, v2, :cond_1

    .line 1039
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->RESOURCE_VARIABLE:Ljavax/lang/model/element/ElementKind;

    if-eq v1, v2, :cond_1

    .line 1040
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->EXCEPTION_PARAMETER:Ljavax/lang/model/element/ElementKind;

    if-eq v1, v2, :cond_1

    .line 1041
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->PARAMETER:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 1044
    :cond_0
    invoke-static {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOfImplicitReceiver(Ljavax/lang/model/element/Element;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    .line 1045
    .local v1, "receiverF":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    new-instance v2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    .line 1046
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v3}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;Lorg/checkerframework/framework/util/BaseContext;)V

    .line 1047
    .local v2, "context":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v5}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->parse(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Z)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v3

    return-object v3

    .line 1042
    .end local v1    # "receiverF":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v2    # "context":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    :cond_1
    :goto_0
    new-instance v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    invoke-direct {v1, v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;-><init>(Ljavax/lang/model/element/Element;)V

    return-object v1
.end method

.method public static parameterIndices(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 673
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 674
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v1, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->UNANCHORED_PARAMETER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 675
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 676
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 677
    .local v2, "idx":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    .end local v2    # "idx":I
    goto :goto_0

    .line 679
    :cond_0
    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Z)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 5
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .param p2, "localScope"    # Lcom/sun/source/util/TreePath;
    .param p3, "useLocalScope"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
        }
    .end annotation

    .line 122
    invoke-virtual {p1, p3}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->copyAndSetUseLocalScope(Z)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    move-result-object p1

    .line 123
    iget-object v0, p1, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->checkerContext:Lorg/checkerframework/framework/util/BaseContext;

    invoke-interface {v0}, Lorg/checkerframework/framework/util/BaseContext;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    .line 126
    .local v0, "env":Ljavax/annotation/processing/ProcessingEnvironment;
    :try_start_0
    invoke-static {p0}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->replaceParameterSyntax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->parseExpression(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1
    :try_end_0
    .catch Lorg/checkerframework/com/github/javaparser/ParseProblemException; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    .local v1, "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    nop

    .line 133
    :try_start_1
    new-instance v2, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;

    invoke-direct {v2, p2, v0}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ExpressionToReceiverVisitor;-><init>(Lcom/sun/source/util/TreePath;Ljavax/annotation/processing/ProcessingEnvironment;)V

    invoke-virtual {v1, v2, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :try_end_1
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    .local v2, "result":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    nop

    .line 139
    instance-of v3, v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    if-eqz v3, :cond_1

    .line 140
    const-string v3, ".class"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->ANCHORED_PARAMETER_PATTERN:Ljava/util/regex/Pattern;

    .line 143
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    nop

    .line 148
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 146
    const-string v4, "a class name cannot terminate a flow expression string, where result=%s [%s]"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-static {p0, v3}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->constructParserException(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;

    move-result-object v3

    throw v3

    .line 150
    :cond_1
    :goto_0
    return-object v2

    .line 134
    .end local v2    # "result":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :catch_0
    move-exception v2

    .line 137
    .local v2, "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;
    invoke-static {v2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;->access$000(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;

    move-result-object v3

    throw v3

    .line 127
    .end local v1    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .end local v2    # "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$ParseRuntimeException;
    :catch_1
    move-exception v1

    .line 128
    .local v1, "e":Lorg/checkerframework/com/github/javaparser/ParseProblemException;
    const-string v2, "is an invalid expression"

    invoke-static {p0, v2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->constructParserException(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;

    move-result-object v2

    throw v2
.end method

.method private static replaceParameterSyntax(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "expression"    # Ljava/lang/String;

    .line 158
    move-object v0, p0

    .line 160
    .local v0, "updatedExpression":Ljava/lang/String;
    invoke-static {p0}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->parameterIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 161
    .local v2, "integer":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_param_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 162
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .end local v2    # "integer":Ljava/lang/Integer;
    goto :goto_0

    .line 165
    :cond_0
    return-object v0
.end method
