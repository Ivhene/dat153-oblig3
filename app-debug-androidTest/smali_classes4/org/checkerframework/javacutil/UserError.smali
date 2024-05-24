.class public Lorg/checkerframework/javacutil/UserError;
.super Ljava/lang/RuntimeException;
.source "UserError.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    if-eqz p1, :cond_0

    .line 20
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Must have a detail message."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 29
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method
