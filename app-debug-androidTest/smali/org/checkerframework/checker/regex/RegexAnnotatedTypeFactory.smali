.class public Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;
.super Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;
.source "RegexAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;,
        Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexPropagationTreeAnnotator;,
        Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexQualifierHierarchy;
    }
.end annotation


# instance fields
.field protected final PARTIALREGEX:Ljavax/lang/model/element/AnnotationMirror;

.field protected final POLYREGEX:Ljavax/lang/model/element/AnnotationMirror;

.field protected final REGEX:Ljavax/lang/model/element/AnnotationMirror;

.field protected final REGEXBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

.field private final partialRegexValue:Ljavax/lang/model/element/ExecutableElement;

.field private final patternCompile:Ljavax/lang/model/element/ExecutableElement;

.field protected final regexValueElement:Ljavax/lang/model/element/ExecutableElement;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 4
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 120
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 77
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/regex/qual/Regex;

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->REGEX:Ljavax/lang/model/element/AnnotationMirror;

    .line 79
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/regex/qual/RegexBottom;

    .line 80
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->REGEXBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    .line 82
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/regex/qual/PartialRegex;

    .line 83
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->PARTIALREGEX:Ljavax/lang/model/element/AnnotationMirror;

    .line 85
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/regex/qual/PolyRegex;

    .line 86
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->POLYREGEX:Ljavax/lang/model/element/AnnotationMirror;

    .line 89
    const-class v0, Lorg/checkerframework/checker/regex/qual/Regex;

    .line 91
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 90
    const-string v2, "value"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->regexValueElement:Ljavax/lang/model/element/ExecutableElement;

    .line 101
    const-class v0, Lorg/checkerframework/checker/regex/qual/PartialRegex;

    .line 103
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 102
    invoke-static {v0, v2, v3, v1}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->partialRegexValue:Ljavax/lang/model/element/ExecutableElement;

    .line 113
    const-class v0, Ljava/util/regex/Pattern;

    .line 115
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 114
    const-string v2, "compile"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->patternCompile:Ljavax/lang/model/element/ExecutableElement;

    .line 130
    invoke-virtual {p0}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->postInit()V

    .line 131
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 74
    invoke-static {p0}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->isRegex(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;)Ljavax/lang/model/element/ExecutableElement;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    .line 74
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->patternCompile:Ljavax/lang/model/element/ExecutableElement;

    return-object v0
.end method

.method static synthetic access$200(Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    .line 74
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    return-object v0
.end method

.method static synthetic access$300(Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;)Ljavax/lang/model/util/Elements;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    .line 74
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    return-object v0
.end method

.method static synthetic access$400(Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    .line 74
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    return-object v0
.end method

.method static synthetic access$500(Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;)Ljavax/lang/model/element/ExecutableElement;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    .line 74
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->partialRegexValue:Ljavax/lang/model/element/ExecutableElement;

    return-object v0
.end method

.method public static getGroupCount(Ljava/lang/String;)I
    .locals 2
    .param p0, "regexp"    # Ljava/lang/String;

    .line 222
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    return v0
.end method

.method private static isRegex(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 233
    :try_start_0
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    nop

    .line 237
    const/4 v0, 0x1

    return v0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public bridge synthetic createFlowTransferFunction(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)Lorg/checkerframework/framework/flow/CFAbstractTransfer;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->createFlowTransferFunction(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)Lorg/checkerframework/framework/flow/CFTransfer;

    move-result-object p1

    return-object p1
.end method

.method public createFlowTransferFunction(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)Lorg/checkerframework/framework/flow/CFTransfer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            "Lorg/checkerframework/framework/flow/CFTransfer;",
            ">;)",
            "Lorg/checkerframework/framework/flow/CFTransfer;"
        }
    .end annotation

    .line 143
    .local p1, "analysis":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/flow/CFTransfer;>;"
    new-instance v0, Lorg/checkerframework/checker/regex/RegexTransfer;

    move-object v1, p1

    check-cast v1, Lorg/checkerframework/framework/flow/CFAnalysis;

    invoke-direct {v0, v1}, Lorg/checkerframework/checker/regex/RegexTransfer;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)V

    return-object v0
.end method

.method public createQualifierHierarchy(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)Lorg/checkerframework/framework/type/QualifierHierarchy;
    .locals 2
    .param p1, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 157
    new-instance v0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexQualifierHierarchy;

    iget-object v1, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->REGEXBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-direct {v0, p0, p1, v1}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexQualifierHierarchy;-><init>(Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;Ljavax/lang/model/element/AnnotationMirror;)V

    return-object v0
.end method

.method createRegexAnnotation(I)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "groupCount"    # I

    .line 148
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v1, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-class v2, Lorg/checkerframework/checker/regex/qual/Regex;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V

    .line 149
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    if-lez p1, :cond_0

    .line 150
    const-string v1, "value"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Integer;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 152
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method protected createSupportedTypeQualifiers()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation

    .line 135
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/checkerframework/checker/regex/qual/Regex;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lorg/checkerframework/checker/regex/qual/PartialRegex;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lorg/checkerframework/checker/regex/qual/RegexBottom;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lorg/checkerframework/checker/regex/qual/UnknownRegex;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->getBundledTypeQualifiers([Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    .locals 4

    .line 244
    new-instance v0, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    new-instance v2, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;

    invoke-direct {v2, p0}, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 245
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->addStandardLiteralQualifiers()Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;

    invoke-direct {v2, p0, p0}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexTreeAnnotator;-><init>(Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexPropagationTreeAnnotator;

    invoke-direct {v2, p0}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory$RegexPropagationTreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;-><init>([Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;)V

    .line 244
    return-object v0
.end method

.method public getGroupCount(Ljavax/lang/model/element/AnnotationMirror;)I
    .locals 2
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 211
    nop

    .line 212
    invoke-static {p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValuesWithDefaults(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->regexValueElement:Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationValue;

    .line 217
    .local v0, "groupCountValue":Ljavax/lang/model/element/AnnotationValue;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method
