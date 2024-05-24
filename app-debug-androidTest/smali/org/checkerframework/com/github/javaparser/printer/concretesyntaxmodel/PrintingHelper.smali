.class Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/PrintingHelper;
.super Ljava/lang/Object;
.source "PrintingHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static printToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 29
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/printer/Printable;

    if-eqz v0, :cond_0

    .line 30
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/Printable;

    invoke-interface {v0}, Lorg/checkerframework/com/github/javaparser/printer/Printable;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 32
    :cond_0
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_1

    .line 33
    move-object v0, p0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 35
    :cond_1
    if-eqz p0, :cond_2

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 39
    :cond_2
    const-string v0, ""

    return-object v0
.end method
