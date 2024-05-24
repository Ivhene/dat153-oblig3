.class public interface abstract Lorg/checkerframework/framework/util/OptionConfiguration;
.super Ljava/lang/Object;
.source "OptionConfiguration.java"


# virtual methods
.method public abstract getBooleanOption(Ljava/lang/String;)Z
.end method

.method public abstract getBooleanOption(Ljava/lang/String;Z)Z
.end method

.method public abstract getOption(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getOptions()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedOptions()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasOption(Ljava/lang/String;)Z
.end method
