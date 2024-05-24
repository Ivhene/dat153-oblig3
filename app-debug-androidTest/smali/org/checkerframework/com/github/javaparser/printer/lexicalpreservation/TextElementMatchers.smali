.class Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatchers;
.super Ljava/lang/Object;
.source "TextElementMatchers.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static byNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;
    .locals 1
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "node"
        }
    .end annotation

    .line 33
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatchers$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatchers$1;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method static byTokenType(I)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;
    .locals 1
    .param p0, "tokenType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenType"
        }
    .end annotation

    .line 29
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatchers$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatchers$$ExternalSyntheticLambda0;-><init>(I)V

    return-object v0
.end method

.method static synthetic lambda$byTokenType$0(ILorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 1
    .param p0, "tokenType"    # I
    .param p1, "textElement"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "tokenType",
            "textElement"
        }
    .end annotation

    .line 29
    invoke-virtual {p1, p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;->isToken(I)Z

    move-result v0

    return v0
.end method
