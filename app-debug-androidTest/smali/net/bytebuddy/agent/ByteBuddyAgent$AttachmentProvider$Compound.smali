.class public Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Compound;
.super Ljava/lang/Object;
.source "ByteBuddyAgent.java"

# interfaces
.implements Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compound"
.end annotation


# instance fields
.field private final attachmentProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;",
            ">;)V"
        }
    .end annotation

    .line 1221
    .local p1, "attachmentProviders":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Compound;->attachmentProviders:Ljava/util/List;

    .line 1223
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    .line 1224
    .local v1, "attachmentProvider":Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;
    instance-of v2, v1, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Compound;

    if-eqz v2, :cond_0

    .line 1225
    iget-object v2, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Compound;->attachmentProviders:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Compound;

    iget-object v3, v3, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Compound;->attachmentProviders:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1227
    :cond_0
    iget-object v2, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Compound;->attachmentProviders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1229
    .end local v1    # "attachmentProvider":Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;
    :goto_1
    goto :goto_0

    .line 1230
    :cond_1
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V
    .locals 1
    .param p1, "attachmentProvider"    # [Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    .line 1213
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Compound;-><init>(Ljava/util/List;)V

    .line 1214
    return-void
.end method


# virtual methods
.method public attempt()Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;
    .locals 4

    .line 1236
    iget-object v0, p0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Compound;->attachmentProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    .line 1237
    .local v1, "attachmentProvider":Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;
    invoke-interface {v1}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;->attempt()Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;

    move-result-object v2

    .line 1238
    .local v2, "accessor":Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;
    invoke-interface {v2}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1239
    return-object v2

    .line 1241
    .end local v1    # "attachmentProvider":Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;
    .end local v2    # "accessor":Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;
    :cond_0
    goto :goto_0

    .line 1242
    :cond_1
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;

    return-object v0
.end method
