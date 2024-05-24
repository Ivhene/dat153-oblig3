.class Lorg/checkerframework/framework/util/TreePathCacher$Result;
.super Ljava/lang/Error;
.source "TreePathCacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/TreePathCacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Result"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x44ac6f109121a133L


# instance fields
.field path:Lcom/sun/source/util/TreePath;


# direct methods
.method constructor <init>(Lcom/sun/source/util/TreePath;)V
    .locals 0
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 78
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/checkerframework/framework/util/TreePathCacher$Result;->path:Lcom/sun/source/util/TreePath;

    .line 80
    return-void
.end method
