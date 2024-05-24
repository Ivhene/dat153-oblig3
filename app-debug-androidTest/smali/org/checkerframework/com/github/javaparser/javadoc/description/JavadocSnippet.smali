.class public Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocSnippet;
.super Ljava/lang/Object;
.source "JavadocSnippet.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescriptionElement;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-eqz p1, :cond_0

    .line 37
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocSnippet;->text:Ljava/lang/String;

    .line 38
    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 47
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 48
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocSnippet;

    .line 52
    .local v0, "that":Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocSnippet;
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocSnippet;->text:Ljava/lang/String;

    iget-object v2, v0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocSnippet;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 48
    .end local v0    # "that":Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocSnippet;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocSnippet;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JavadocSnippet{text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocSnippet;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toText()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocSnippet;->text:Ljava/lang/String;

    return-object v0
.end method
