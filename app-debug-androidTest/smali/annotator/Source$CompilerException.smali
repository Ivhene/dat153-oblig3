.class public Lannotator/Source$CompilerException;
.super Ljava/lang/Exception;
.source "Source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lannotator/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompilerException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x41f11d27746b8e2dL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method
