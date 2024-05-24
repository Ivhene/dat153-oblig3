.class public final synthetic Lorg/checkerframework/framework/util/ExecUtil$Redirection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/framework/util/ExecUtil$Redirection;

.field public final synthetic f$1:Ljava/io/InputStream;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/framework/util/ExecUtil$Redirection;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/framework/util/ExecUtil$Redirection$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/framework/util/ExecUtil$Redirection;

    iput-object p2, p0, Lorg/checkerframework/framework/util/ExecUtil$Redirection$$ExternalSyntheticLambda0;->f$1:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/checkerframework/framework/util/ExecUtil$Redirection$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/framework/util/ExecUtil$Redirection;

    iget-object v1, p0, Lorg/checkerframework/framework/util/ExecUtil$Redirection$$ExternalSyntheticLambda0;->f$1:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/util/ExecUtil$Redirection;->lambda$redirect$0$org-checkerframework-framework-util-ExecUtil$Redirection(Ljava/io/InputStream;)V

    return-void
.end method
