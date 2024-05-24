.class final enum Lorg/checkerframework/javacutil/PluginUtil$CheckerProp$5;
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

    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;-><init>(Ljava/lang/String;ILorg/checkerframework/javacutil/PluginUtil$1;)V

    return-void
.end method


# virtual methods
.method public getCmdLine(Ljava/util/Map;)Ljava/util/List;
    .locals 1
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

    .line 262
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;Ljava/lang/Object;>;"
    const-string v0, "-Anomsgtext"

    invoke-static {p1, p0, v0}, Lorg/checkerframework/javacutil/PluginUtil;->getBooleanProp(Ljava/util/Map;Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
