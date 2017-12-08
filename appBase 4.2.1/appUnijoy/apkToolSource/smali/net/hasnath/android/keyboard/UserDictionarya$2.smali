.class Lnet/hasnath/android/keyboard/UserDictionarya$2;
.super Ljava/lang/Thread;
.source "UserDictionarya.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hasnath/android/keyboard/UserDictionarya;->addWord(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hasnath/android/keyboard/UserDictionarya;

.field private final synthetic val$contentResolver:Landroid/content/ContentResolver;

.field private final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lnet/hasnath/android/keyboard/UserDictionarya;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/ContentValues;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lnet/hasnath/android/keyboard/UserDictionarya$2;->this$0:Lnet/hasnath/android/keyboard/UserDictionarya;

    iput-object p3, p0, Lnet/hasnath/android/keyboard/UserDictionarya$2;->val$contentResolver:Landroid/content/ContentResolver;

    iput-object p4, p0, Lnet/hasnath/android/keyboard/UserDictionarya$2;->val$values:Landroid/content/ContentValues;

    .line 100
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lnet/hasnath/android/keyboard/UserDictionarya$2;->val$contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lnet/hasnath/android/keyboard/UserDictionarya$2;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 103
    return-void
.end method
