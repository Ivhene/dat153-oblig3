.class final enum Lorg/checkerframework/javacutil/PluginUtil$CheckerProp$3;
.super Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;
.source "PluginUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;-><init>(Ljava/lang/String;ILorg/checkerframework/javacutil/PluginUtil$1;)V

    return-void
.end method


# virtual methods
.method public getCmdLine(Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 249
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "-Alint="

    invoke-static {p1, p0, v1, v0}, Lorg/checkerframework/javacutil/PluginUtil;->getStringProp(Ljava/util/Map;Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
