.class Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;
.super Ljava/lang/Object;
.source "Options.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/options/Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OptionGroupInfo"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field optionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field unpublicized:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "unpublicized"    # Z

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;->optionList:Ljava/util/List;

    .line 608
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;->name:Ljava/lang/String;

    .line 609
    iput-boolean p2, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;->unpublicized:Z

    .line 610
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/org/plumelib/options/OptionGroup;)V
    .locals 1
    .param p1, "optionGroup"    # Lorg/checkerframework/org/plumelib/options/OptionGroup;

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;->optionList:Ljava/util/List;

    .line 614
    invoke-interface {p1}, Lorg/checkerframework/org/plumelib/options/OptionGroup;->value()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;->name:Ljava/lang/String;

    .line 615
    invoke-interface {p1}, Lorg/checkerframework/org/plumelib/options/OptionGroup;->unpublicized()Z

    move-result v0

    iput-boolean v0, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;->unpublicized:Z

    .line 616
    return-void
.end method


# virtual methods
.method anyPublicized()Z
    .locals 3

    .line 625
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;->optionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;

    .line 626
    .local v1, "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    iget-boolean v2, v1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->unpublicized:Z

    if-nez v2, :cond_0

    .line 627
    const/4 v0, 0x1

    return v0

    .line 629
    .end local v1    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    :cond_0
    goto :goto_0

    .line 630
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
