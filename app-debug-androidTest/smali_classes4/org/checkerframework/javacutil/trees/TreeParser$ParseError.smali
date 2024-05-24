.class Lorg/checkerframework/javacutil/trees/TreeParser$ParseError;
.super Ljava/lang/RuntimeException;
.source "TreeParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/javacutil/trees/TreeParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseError"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1a32a6d31fb7b2a9L


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 158
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 159
    return-void
.end method
