.class public interface abstract Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;
.super Ljava/lang/Object;
.source "TextElementMatcher.java"


# direct methods
.method public static synthetic lambda$and$0(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 1
    .param p0, "_this"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;
    .param p1, "textElementMatcher"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;
    .param p2, "textElement"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "textElementMatcher",
            "textElement"
        }
    .end annotation

    .line 36
    invoke-interface {p0, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;->match(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;->match(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public and(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;)Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;
    .locals 1
    .param p1, "textElementMatcher"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textElementMatcher"
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;)V

    return-object v0
.end method

.method public abstract match(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textElement"
        }
    .end annotation
.end method
