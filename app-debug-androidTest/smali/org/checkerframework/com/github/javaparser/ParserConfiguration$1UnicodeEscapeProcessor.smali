.class Lorg/checkerframework/com/github/javaparser/ParserConfiguration$1UnicodeEscapeProcessor;
.super Ljava/lang/Object;
.source "ParserConfiguration.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/Providers$PreProcessor;
.implements Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/github/javaparser/ParserConfiguration;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1UnicodeEscapeProcessor"
.end annotation


# instance fields
.field private _unicodeDecoder:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;

.field final synthetic this$0:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$1UnicodeEscapeProcessor;->this$0:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$null$0(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;Lorg/checkerframework/com/github/javaparser/Range;)V
    .locals 1
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p1, "mapping"    # Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;
    .param p2, "range"    # Lorg/checkerframework/com/github/javaparser/Range;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "node",
            "mapping",
            "range"
        }
    .end annotation

    .line 173
    invoke-virtual {p1, p2}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;->transform(Lorg/checkerframework/com/github/javaparser/Range;)Lorg/checkerframework/com/github/javaparser/Range;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->setRange(Lorg/checkerframework/com/github/javaparser/Range;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-void
.end method

.method static synthetic lambda$null$1(Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 2
    .param p0, "mapping"    # Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "mapping",
            "node"
        }
    .end annotation

    .line 172
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$1UnicodeEscapeProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$1UnicodeEscapeProcessor$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$process$2$org-checkerframework-com-github-javaparser-ParserConfiguration$1UnicodeEscapeProcessor(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 2
    .param p1, "root"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "root"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$1UnicodeEscapeProcessor;->_unicodeDecoder:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;->getPositionMapping()Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;

    move-result-object v0

    .line 170
    .local v0, "mapping":Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$1UnicodeEscapeProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$1UnicodeEscapeProcessor$$ExternalSyntheticLambda2;-><init>(Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;)V

    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->walk(Ljava/util/function/Consumer;)V

    .line 175
    :cond_0
    return-void
.end method

.method public process(Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/Provider;
    .locals 1
    .param p1, "innerProvider"    # Lorg/checkerframework/com/github/javaparser/Provider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "innerProvider"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$1UnicodeEscapeProcessor;->this$0:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->isPreprocessUnicodeEscapes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;

    invoke-direct {v0, p1}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;-><init>(Lorg/checkerframework/com/github/javaparser/Provider;)V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$1UnicodeEscapeProcessor;->_unicodeDecoder:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;

    .line 158
    return-object v0

    .line 160
    :cond_0
    return-object p1
.end method

.method public process(Lorg/checkerframework/com/github/javaparser/ParseResult;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V
    .locals 2
    .param p2, "configuration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "configuration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "+",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ParserConfiguration;",
            ")V"
        }
    .end annotation

    .line 166
    .local p1, "result":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<+Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$1UnicodeEscapeProcessor;->this$0:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->isPreprocessUnicodeEscapes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$1UnicodeEscapeProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$1UnicodeEscapeProcessor$$ExternalSyntheticLambda1;-><init>(Lorg/checkerframework/com/github/javaparser/ParserConfiguration$1UnicodeEscapeProcessor;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 178
    :cond_0
    return-void
.end method
