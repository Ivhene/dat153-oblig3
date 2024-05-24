.class Lorg/checkerframework/common/value/ValueMethodIdentifier;
.super Ljava/lang/Object;
.source "ValueMethodIdentifier.java"


# instance fields
.field private final endsWithMethod:Ljavax/lang/model/element/ExecutableElement;

.field private final lengthMethod:Ljavax/lang/model/element/ExecutableElement;

.field private final mathMaxMethod:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation
.end field

.field private final mathMinMethod:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation
.end field

.field private final startsWithMethod:Ljavax/lang/model/element/ExecutableElement;


# direct methods
.method public constructor <init>(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 3
    .param p1, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "length"

    const/4 v1, 0x0

    const-string v2, "java.lang.String"

    invoke-static {v2, v0, v1, p1}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/value/ValueMethodIdentifier;->lengthMethod:Ljavax/lang/model/element/ExecutableElement;

    .line 25
    const-string v0, "startsWith"

    const/4 v1, 0x1

    invoke-static {v2, v0, v1, p1}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/value/ValueMethodIdentifier;->startsWithMethod:Ljavax/lang/model/element/ExecutableElement;

    .line 26
    const-string v0, "endsWith"

    invoke-static {v2, v0, v1, p1}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/value/ValueMethodIdentifier;->endsWithMethod:Ljavax/lang/model/element/ExecutableElement;

    .line 27
    const-string v0, "java.lang.Math"

    const-string v1, "min"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, p1}, Lorg/checkerframework/javacutil/TreeUtils;->getMethods(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/common/value/ValueMethodIdentifier;->mathMinMethod:Ljava/util/List;

    .line 28
    const-string v1, "max"

    invoke-static {v0, v1, v2, p1}, Lorg/checkerframework/javacutil/TreeUtils;->getMethods(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/value/ValueMethodIdentifier;->mathMaxMethod:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public isEndsWithMethod(Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 1
    .param p1, "method"    # Ljavax/lang/model/element/ExecutableElement;

    .line 60
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueMethodIdentifier;->endsWithMethod:Ljavax/lang/model/element/ExecutableElement;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMathMax(Lcom/sun/source/tree/Tree;Ljavax/annotation/processing/ProcessingEnvironment;)Z
    .locals 1
    .param p1, "methodTree"    # Lcom/sun/source/tree/Tree;
    .param p2, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 38
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueMethodIdentifier;->mathMaxMethod:Ljava/util/List;

    invoke-static {p1, v0, p2}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljava/util/List;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v0

    return v0
.end method

.method public isMathMin(Lcom/sun/source/tree/Tree;Ljavax/annotation/processing/ProcessingEnvironment;)Z
    .locals 1
    .param p1, "methodTree"    # Lcom/sun/source/tree/Tree;
    .param p2, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 33
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueMethodIdentifier;->mathMinMethod:Ljava/util/List;

    invoke-static {p1, v0, p2}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljava/util/List;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v0

    return v0
.end method

.method public isStartsWithMethod(Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 1
    .param p1, "method"    # Ljavax/lang/model/element/ExecutableElement;

    .line 55
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueMethodIdentifier;->startsWithMethod:Ljavax/lang/model/element/ExecutableElement;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isStringLengthInvocation(Lcom/sun/source/tree/Tree;Ljavax/annotation/processing/ProcessingEnvironment;)Z
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 43
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueMethodIdentifier;->lengthMethod:Ljavax/lang/model/element/ExecutableElement;

    invoke-static {p1, v0, p2}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v0

    return v0
.end method

.method public isStringLengthMethod(Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 1
    .param p1, "method"    # Ljavax/lang/model/element/ExecutableElement;

    .line 49
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueMethodIdentifier;->lengthMethod:Ljavax/lang/model/element/ExecutableElement;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
