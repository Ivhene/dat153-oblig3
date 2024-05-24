.class public Lorg/checkerframework/framework/util/Heuristics$Within;
.super Lorg/checkerframework/framework/util/Heuristics$Matcher;
.source "Heuristics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/Heuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Within"
.end annotation


# instance fields
.field private final matcher:Lorg/checkerframework/framework/util/Heuristics$Matcher;


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/util/Heuristics$Matcher;)V
    .locals 0
    .param p1, "matcher"    # Lorg/checkerframework/framework/util/Heuristics$Matcher;

    .line 137
    invoke-direct {p0}, Lorg/checkerframework/framework/util/Heuristics$Matcher;-><init>()V

    .line 138
    iput-object p1, p0, Lorg/checkerframework/framework/util/Heuristics$Within;->matcher:Lorg/checkerframework/framework/util/Heuristics$Matcher;

    .line 139
    return-void
.end method


# virtual methods
.method public match(Lcom/sun/source/util/TreePath;)Z
    .locals 2
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 143
    move-object v0, p1

    .line 144
    .local v0, "p":Lcom/sun/source/util/TreePath;
    :goto_0
    if-eqz v0, :cond_1

    .line 145
    iget-object v1, p0, Lorg/checkerframework/framework/util/Heuristics$Within;->matcher:Lorg/checkerframework/framework/util/Heuristics$Matcher;

    invoke-virtual {v1, v0}, Lorg/checkerframework/framework/util/Heuristics$Matcher;->match(Lcom/sun/source/util/TreePath;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    const/4 v1, 0x1

    return v1

    .line 148
    :cond_0
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    goto :goto_0

    .line 151
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
