.class public Lorg/jsoup/nodes/BooleanAttribute;
.super Lorg/jsoup/nodes/Attribute;
.source "BooleanAttribute.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected isBooleanAttribute()Z
    .locals 1

    .line 18
    const/4 v0, 0x1

    return v0
.end method