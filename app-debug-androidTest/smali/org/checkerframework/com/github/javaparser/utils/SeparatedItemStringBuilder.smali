.class public Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;
.super Ljava/lang/Object;
.source "SeparatedItemStringBuilder.java"


# instance fields
.field private builder:Ljava/lang/StringBuilder;

.field private hasItems:Z

.field private final postfix:Ljava/lang/String;

.field private final separator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "separator"    # Ljava/lang/String;
    .param p3, "postfix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "prefix",
            "separator",
            "postfix"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;->hasItems:Z

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;->builder:Ljava/lang/StringBuilder;

    .line 16
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;->separator:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;->postfix:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public varargs append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;
    .locals 2
    .param p1, "format"    # Ljava/lang/CharSequence;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "args"
        }
    .end annotation

    .line 25
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;->hasItems:Z

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;->builder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;->hasItems:Z

    .line 30
    return-object p0
.end method

.method public hasItems()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;->hasItems:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/SeparatedItemStringBuilder;->postfix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
